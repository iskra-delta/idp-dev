		;; vect.s
        ;; 
        ;; interrupt vectors
		;;
        ;; MIT License (see: LICENSE)
        ;; copyright (c) 2021 tomaz stih
        ;;
		;; 12.11.2021    tstih
		.module vect

		.globl	_setvec
		.globl 	_getvec

        .area	_CODE


        ;; get bios address to hl
        ;; affects: hl
bios2hl:
        ld      hl,(1)                  ; get bios address
        dec     hl                      ; minus 3
        dec     hl
        dec     hl
        ret


        ;; ------------------------------
		;; uint16_t _getvec(uint8_t offs)
        ;; ------------------------------
        ;; get interrupt vector
		;; input:	vector number
		;; output:	interrupt vector address
        ;; affects: af, de, hl
_getvec::
        
        pop     hl                      ; ret address
        pop     de                      ; e=interrupt no
        ;; restore stack
        push    de
        push    hl
        ;; get bios address to hl
        call    bios2hl
        ;; add vector.
        ld      d,#0                    ; de=interrupt no
        add     hl,de                   ; hl points to vector
        ld      e,(hl)                  ; vector into de
        inc     hl
        ld      d,(hl)
        ex      de,hl                   ; and back to hl
        
        ret


        ;; ---------------------------------------------
		;; void _setvec(uint8_t offs, void (*handler)())
        ;; ---------------------------------------------
        ;; set interrupt vector
		;; input:	offs ... vector offset
        ;;          handler ... vector handler
        ;; affect:  af, bc, de, hl
_setvec::
        di
        pop     bc                      ; ret addr.
        pop     de                      ; e=interrupt no.
                                        ; d=LO(handler)
        pop     hl                      ; l=HI(handler)
        ;; restore stack
        push    hl
        push    de
        push    bc
        ;; rearange input parameters
        ld      h,l                     ; h=HI(handler)
        ld      l,d                     ; l=LO(handler)
        ld      d,#0                    ; de=vector
        ;; store parameters
        push    hl                      ; handler
        push    de                      ; vector no
        ;; get bios
        call    bios2hl
        pop     de                      ; get vector no.
        add     hl,de                   ; vector addr to hl
        ;; and set it
        pop     de                      ; de=handler
        ld      (hl),e                  ; LO(handler)
        inc     hl
        ld      (hl),d                  ; HI(handler)
        ei
        ret