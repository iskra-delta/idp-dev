        ;;  mm1.s
        ;;  
        ;;  mm1_font
        ;; 
        ;;  notes: see font.h for format details
        ;;  
        ;;  MIT License (see: LICENSE)
        ;;  copyright(c) 2021 tomaz stih
        ;;  
        ;;  08.12.2021   tstih
        .module mm1_font

        .globl _mm1_font

        .area _CODE
_mm1_font::
        ;; font header
        .db 0                   ; font flags
        .db 7                   ; width (max width for proportional)
        .db 7                   ; height
        .db 1                   ; first ascii
        .db 12                  ; last ascii

        ;; glpyh offsets
        .dw 0x001D, 0x0039, 0x003D, 0x004E, 0x0067, 0x0080, 0x009D, 0x00B6
        .dw 0x00D0, 0x00F2, 0x0115, 0x0137

        ;; ascii 0: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 24                  ; # moves
        .db 2                   ; x origin
        .db 0                   ; y origin
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 1: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 0                   ; # moves
        ;; ascii 2: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 13                  ; # moves
        .db 1                   ; x origin
        .db 4                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 3: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 21                  ; # moves
        .db 1                   ; x origin
        .db 5                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        ;; ascii 4: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 21                  ; # moves
        .db 5                   ; x origin
        .db 4                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 5: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 25                  ; # moves
        .db 5                   ; x origin
        .db 4                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 6: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 21                  ; # moves
        .db 7                   ; x origin
        .db 2                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 7: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 22                  ; # moves
        .db 1                   ; x origin
        .db 0                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 86                  ; move dx=-2, dy=-2, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 82                  ; move dx=-2, dy=2, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 8: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 30                  ; # moves
        .db 3                   ; x origin
        .db 1                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 28                  ; move dx=0, dy=-3, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 9: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 31                  ; # moves
        .db 4                   ; x origin
        .db 7                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 10: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 30                  ; # moves
        .db 0                   ; x origin
        .db 0                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 122                 ; move dx=-3, dy=3, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 11: '<control>'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 7                   ; height
        .db 38                  ; # moves
        .db 6                   ; x origin
        .db 6                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
