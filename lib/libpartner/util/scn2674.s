		;; scn2674.s
        ;; 
        ;; a library of text mode (only) primitives for the signetics 
        ;; SCN2674 (AVDC) card
		;;
        ;; MIT License (see: LICENSE)
        ;; copyright (c) 2021 tomaz stih
        ;;
		;; 04.04.2021   tstih
	    .module scn2674

        .globl  __scn2674_cursor_on
	    .globl  __scn2674_cursor_off
        .globl  __scn2674_cls
        .globl  __scn2674_xy
        .globl  __scn2674_burst
        .globl  __scn2674_putchar
        .globl  __scn2674_getchar
        .globl  __scn2674_rowptr
        .globl  __scn2674_curptr

        .include "scn2674.inc"

        .equ MAX_BURST_CYCLE,   8


        .area	_CODE


        ;; wait for avdc int
        ;; affects: af
avdc_wait_mem_acc:
        ;; if low, wait for high
        in      a, (#SCN2674_GR_CMNI)
        and     #SCN2674_GR_CMNI_SCN2674A
        jr      z,avdc_wait_mem_acc
        ;; ...wait for high to end
awint:
        in      a, (#SCN2674_GR_CMNI)
        and     #SCN2674_GR_CMNI_SCN2674A
        jr      nz,awint
        ret


        ;; wait for avdc ready
        ;; affects: af
avdc_wait_rdy:
        in      a,(#SCN2674_STS)
        and     #SCN2674_STS_RDY
        jr      z,avdc_wait_rdy
        ret


        ;; write hl to cursor
avdc_hl2cursor:
        call    avdc_wait_rdy
        ;; set cursor
        ld      a,l
        out     (#SCN2674_CUR_LO),a
        ld      a,h
        out     (#SCN2674_CUR_HI),a
        ret


        ;; write cursor to hl
avdc_cursor2hl:
        call    avdc_wait_rdy
        ;; get cursor
        in      a,(#SCN2674_CUR_LO)
        ld      l,a
        in      a,(#SCN2674_CUR_HI)
        ld      h,a
        ret


        ;; write hl to pointer
        ;; affects: af
avdc_hl2pointer:
        call    avdc_wait_rdy
        ;; set pointer to correct row ptr address.
        ld      a,#0x1A                 ; set IR to A (10)
        out     (#SCN2674_CMD), a       ; command!
        ld      a,l
        out     (#SCN2674_INIT),a       ; pointer low
        ld      a,h
        out     (#SCN2674_INIT),a       ; pointer high
        ret


        ;; avdc_read
        ;; read SCN (video!) memory and attr at hl
        ;; NOTES:
        ;;  must be preceeded by avdc_wait_int and
        ;;  avdc_wait_rdy!
        ;; inputs:  hl=memory address
        ;; outputs: e=char, d=attribute
        ;; affects: af, de
avdc_read:
        call    avdc_hl2pointer    
        ;; read char into a
        ld      a,#SCN2674_CMD_RDPTR    ; read at pointer
        out     (SCN2674_CMD), a        ; read into char reg.    
        call    avdc_wait_rdy           ; makes sure we're done
        in      a,(SCN2674_CHR)         ; get char
        ld      e,a                     ; char into e
        in      a,(SCN2674_AT)          ; get attr
        ld      d,a                     ; into d
        ret


		;; avdc_rowptr (l=row index) into hl
        ;; returns row address
        ;; NOTES:
        ;;  on idp a row table mode is used to access
        ;;  rows. row table spans from addr 0 to addr 52.
        ;;  this is enough to store pointers for 26
        ;;  rows (2 bytes per pointer).
        ;;  each row is 132 characters wide.
        ;; inputs: l=row index
        ;; outputs: hl=row address
        ;; affects: hl, de, af
avdc_rowptr:
        ;; calculate exact row addr
        ld      h, #0                   ; hl=row
        add     hl,hl                   ; hl=hl*2
        ;; wait for interrupt
        ;; read it
        call    avdc_read               ; read first byte
        push    de                      ; store result
        inc     hl                      ; addr+1
        call    avdc_read               ; and read to de
        ld      h,e
        pop     de
        ld      l,e
        ret    


        ;; -------------------------
		;; void _scn2674_cursor_on()
        ;; -------------------------
        ;; shows cursor
        ;; affect:  af
__scn2674_cursor_on::
        call    avdc_wait_mem_acc
        ld      a, #SCN2674_CMD_CURS_ON
        out     (SCN2674_CMD), a
        ret


        ;; --------------------------
		;; void _scn2674_cursor_off()
        ;; --------------------------
        ;; hides cursor
        ;; affect:  af
__scn2674_cursor_off::
        call    avdc_wait_mem_acc
        ld      a, #SCN2674_CMD_CURS_OFF
        out     (SCN2674_CMD), a
        ret


        ;; -------------------
		;; void _scn2674_cls()
        ;; -------------------
        ;; clears screen by clearing all rows
        ;; affect:  af, b, de, hl
__scn2674_cls::
        ld      b,#26                   ; 26 rows
        ld      hl,#0                   ; row #
scls_loop:
        ;; wait access
        call    avdc_wait_mem_acc
        ;; row to hl
        ld      h,#0
        ld      l,b                     ; b=row
        dec     l                       ; make l 0 based index
        call    avdc_rowptr             ; row pointer 2 hl
        ;; now move cursor to hl
        call    avdc_hl2cursor          ; set cursor to start
        ld      de,#131                 ; row length
        add     hl,de                   ; add to hl
        call    avdc_hl2pointer         ; set pointer to end
        ;; set char
        call    avdc_wait_rdy
        ld      a,#32                   ; space
        out     (#SCN2674_CHR),a
        xor     a                       ; attr=0
        out     (#SCN2674_AT),a
        ;; finally, delete from cursor to pointer
        ld      a,#SCN2674_CMD_WC2P
        out     (#SCN2674_CMD), a       ; write from curs. to ptr.
        ;; next row
        djnz    scls_loop
        ;; move cursor to 0,0
        ld      l,#0
        call    avdc_rowptr
        call    avdc_hl2cursor
        ret


        ;; --------------------------------------
		;; void _scn2674_xy(int x, int y)
        ;; --------------------------------------
        ;; moves cursor to x,y
        ;; affect: af, c, de, hl
__scn2674_xy::
        pop     de                      ; return address
        pop     bc                      ; c=x
        pop     hl                      ; l=y
        ;; restore stack
        push    hl
        push    bc
        push    de
        ;; x to h
        ld      h,c
        ;; wait access
        call    avdc_wait_mem_acc
        ;; store x
        ld      c,h
        call    avdc_rowptr             ; get row address
        ld      d,#0
        ld      e,c                     ; de=x
        add     hl,de                   ; hl=correct address
        call    avdc_hl2cursor
        ret


        ;; --------------------
        ;; void _scn2674_burst(
        ;;     const char *chars, 
        ;;     uint8_t attr, 
        ;;     uint8_t count)
        ;; --------------------
        ;; write n chars and attributes to current 
        ;; cursor pos only check access once
        ;; if called independently you should call
__scn2674_burst::
        pop     bc                      ; current address
        pop     hl                      ; chars collection
        pop     de                      ; e=attr and d=count
        ;; restore stack
        push    de
        push    hl
        push    bc
        ld      b,d                     ; count to b
        ex      af,af'                  ; use alt acum.
        ld      a,#MAX_BURST_CYCLE
        ex      af,af'
        ;; wait end of memory read
        call    avdc_wait_mem_acc
sburst_loop:
        ;; if alt a is at end of burst cycle
        ;; then wait for mem access.
        ex      af,af'
        dec     a
        jr      nz,sburst_skip
        ld      a,#MAX_BURST_CYCLE
        call    avdc_wait_mem_acc
sburst_skip:
        ex      af,af'
        ;; wait ready
        call    avdc_wait_rdy
        ;; get char and attr     
        ld      a,(hl)                  ; char to a
        inc     hl                      ; next char
        out     (SCN2674_CHR),a         ; set char
        ld      a,e                     ; attr to a
        out     (SCN2674_AT),a
        call    avdc_wait_rdy
        ld      a,#SCN2674_CMD_WAC
        out     (SCN2674_CMD), a  
        djnz    sburst_loop             ; and next char and attr
        ret


        ;; ------------------------------
        ;; void _scn2674_putchar(char ch.
        ;;     unsigned char attr)
        ;; ------------------------------
        ;; writes char amd attribute to x,y
        ;; no cursor movement!
__scn2674_putchar::
        ;; first get parameters off stack
        pop     bc                      ; return address
        pop     hl                      ; h=attr, l=char
        ;; restore stack
        push    hl
        push    bc
        ;; now output
        call    avdc_wait_mem_acc
        call    avdc_wait_rdy
        ld      a,l                     ; write char
        out     (SCN2674_CHR),a
        ld      a,h                     ; and attr
        out     (SCN2674_AT),a
        call    avdc_wait_rdy
        ;; write at cursor
        call    avdc_wait_rdy
        ld      a,#SCN2674_CMD_WAC_NO_MOVE
        out     (SCN2674_CMD),a
        ret


        ;; ------------------------
        ;; void _scn2674_getchar(
        ;;     char *ch, 
        ;;     unsigned char *attr)
        ;; ------------------------
        ;; returns char and attr at x,y
        ;; no cursor movement
__scn2674_getchar::
        ;; wait access
        call    avdc_wait_mem_acc
        call    avdc_wait_rdy
        ;; read at cursor
        ld      a,#SCN2674_CMD_RAC
        out     (SCN2674_CMD),a
        ;; wait till finished
        call    avdc_wait_rdy
        ;; and read out char and attribute
        pop     bc                      ; return address
        pop     hl                      ; pointer to char
        in      a,(SCN2674_CHR)
        ld      (hl),a
        pop     hl 
        in      a,(SCN2674_AT)
        ld      (hl),a
        ; restore stack
        push    hl
        push    hl
        push    bc
        ret


        ;; ------------------------------
        ;; unsigned int __scn2674_curptr()
        ;; ------------------------------
        ;; return cursor address.
__scn2674_curptr::
        call    avdc_cursor2hl
        ret


        ;; ----------------------------
        ;; int _scn2674_rowptr(int row)
        ;; ----------------------------
        ;; return cursor address.
__scn2674_rowptr::
        pop     bc
        pop     hl
        push    hl
        push    bc
        call    avdc_rowptr
        ret