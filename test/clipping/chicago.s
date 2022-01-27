        ;;  chicago.s
        ;;  
        ;;  chicago_font
        ;; 
        ;;  notes: see font.h for format details
        ;;  
        ;;  MIT License (see: LICENSE)
        ;;  copyright(c) 2021 tomaz stih
        ;;  
        ;;  07.12.2021   tstih
        .module chicago_font

        .globl _chicago_font

        .area _CODE
_chicago_font::
        ;; font header
        .db 131                 ; font flags
        .db 13                  ; width (max width for proportional)
        .db 12                  ; height
        .db 32                  ; first ascii
        .db 127                 ; last ascii

        ;; glpyh offsets
        .dw 0x00C5, 0x00C9, 0x00DD, 0x00ED, 0x010A, 0x0123, 0x013C, 0x0159
        .dw 0x0163, 0x0179, 0x018E, 0x01A3, 0x01B4, 0x01BE, 0x01C5, 0x01CE
        .dw 0x01DB, 0x01F1, 0x0206, 0x021A, 0x022E, 0x0243, 0x0259, 0x026F
        .dw 0x0285, 0x02A0, 0x02B8, 0x02C6, 0x02D5, 0x02DD, 0x02E8, 0x02F0
        .dw 0x0304, 0x031B, 0x033B, 0x0359, 0x036E, 0x0386, 0x039C, 0x03B1
        .dw 0x03C8, 0x03E1, 0x03F0, 0x0402, 0x041D, 0x0433, 0x044D, 0x0465
        .dw 0x047B, 0x0493, 0x04AB, 0x04C9, 0x04DC, 0x04F3, 0x0512, 0x0530
        .dw 0x055E, 0x057B, 0x0591, 0x05A7, 0x05BD, 0x05D1, 0x05E4, 0x05EF
        .dw 0x05F7, 0x05FE, 0x0615, 0x062C, 0x063F, 0x0657, 0x066C, 0x0680
        .dw 0x06A1, 0x06B9, 0x06CD, 0x06E1, 0x06F8, 0x070D, 0x072A, 0x0740
        .dw 0x0753, 0x076C, 0x0789, 0x079A, 0x07AA, 0x07BB, 0x07D5, 0x07ED
        .dw 0x0811, 0x082B, 0x084B, 0x085D, 0x0870, 0x0879, 0x088D, 0x089A

        ;; ascii 32: ' '
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 0                   ; # moves
        ;; ascii 33: '!'
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 12                  ; height
        .db 16                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 34: '"'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 12                  ; # moves
        .db 0                   ; x origin
        .db 5                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 35: '#'
        .db 32                  ; class(bits 5-7)
        .db 6                   ; width
        .db 12                  ; height
        .db 25                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 36: '$'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 12                  ; height
        .db 21                  ; # moves
        .db 4                   ; x origin
        .db 3                   ; y origin
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 37: '%'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 12                  ; height
        .db 21                  ; # moves
        .db 2                   ; x origin
        .db 8                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 38: '&'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 12                  ; height
        .db 25                  ; # moves
        .db 5                   ; x origin
        .db 5                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 39: '''
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 12                  ; height
        .db 6                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 40: '('
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 3                   ; x origin
        .db 0                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 41: ')'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 12                  ; height
        .db 17                  ; # moves
        .db 0                   ; x origin
        .db 0                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 42: '*'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 12                  ; height
        .db 17                  ; # moves
        .db 4                   ; x origin
        .db 3                   ; y origin
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 128                 ; move dx=0, dy=0, color=fore (set)
        ;; ascii 43: '+'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 13                  ; # moves
        .db 5                   ; x origin
        .db 5                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 44: ','
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 12                  ; height
        .db 6                   ; # moves
        .db 0                   ; x origin
        .db 8                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 45: '-'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 12                  ; height
        .db 3                   ; # moves
        .db 0                   ; x origin
        .db 6                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 46: '.'
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 12                  ; height
        .db 5                   ; # moves
        .db 0                   ; x origin
        .db 8                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 47: '/'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 12                  ; height
        .db 9                   ; # moves
        .db 2                   ; x origin
        .db 8                   ; y origin
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 48: '0'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 49: '1'
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 12                  ; height
        .db 17                  ; # moves
        .db 2                   ; x origin
        .db 2                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 50: '2'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 16                  ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 51: '3'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 16                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 52: '4'
        .db 32                  ; class(bits 5-7)
        .db 6                   ; width
        .db 12                  ; height
        .db 17                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 53: '5'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 54: '6'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 0                   ; x origin
        .db 8                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 24                  ; move dx=0, dy=3, color=none (move only!)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 55: '7'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 56: '8'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 23                  ; # moves
        .db 5                   ; x origin
        .db 6                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 57: '9'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 20                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 58: ':'
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 12                  ; height
        .db 10                  ; # moves
        .db 0                   ; x origin
        .db 5                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 59: ';'
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 12                  ; height
        .db 11                  ; # moves
        .db 0                   ; x origin
        .db 5                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 60: '<'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 12                  ; height
        .db 4                   ; # moves
        .db 3                   ; x origin
        .db 3                   ; y origin
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        ;; ascii 61: '='
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 7                   ; # moves
        .db 5                   ; x origin
        .db 5                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 62: '>'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 12                  ; height
        .db 4                   ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        ;; ascii 63: '?'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 16                  ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 64: '@'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 12                  ; height
        .db 19                  ; # moves
        .db 3                   ; x origin
        .db 7                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 65: 'A'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 28                  ; # moves
        .db 1                   ; x origin
        .db 9                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 66: 'B'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 26                  ; # moves
        .db 5                   ; x origin
        .db 6                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 67: 'C'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 17                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 68: 'D'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 20                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 69: 'E'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 70: 'F'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 17                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 71: 'G'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 19                  ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 72: 'H'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 21                  ; # moves
        .db 1                   ; x origin
        .db 4                   ; y origin
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 73: 'I'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 12                  ; height
        .db 11                  ; # moves
        .db 2                   ; x origin
        .db 8                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 74: 'J'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 14                  ; # moves
        .db 4                   ; x origin
        .db 2                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 122                 ; move dx=-3, dy=3, color=none (move only!)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 75: 'K'
        .db 32                  ; class(bits 5-7)
        .db 6                   ; width
        .db 12                  ; height
        .db 23                  ; # moves
        .db 1                   ; x origin
        .db 9                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 252                 ; move dx=3, dy=-3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 250                 ; move dx=-3, dy=3, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 76: 'L'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 77: 'M'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 12                  ; height
        .db 22                  ; # moves
        .db 0                   ; x origin
        .db 9                   ; y origin
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 80                  ; move dx=2, dy=2, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 212                 ; move dx=2, dy=-2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 78: 'N'
        .db 32                  ; class(bits 5-7)
        .db 6                   ; width
        .db 12                  ; height
        .db 20                  ; # moves
        .db 6                   ; x origin
        .db 2                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 96                  ; move dx=3, dy=0, color=none (move only!)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 79: 'O'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 80: 'P'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 20                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 81: 'Q'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 20                  ; # moves
        .db 5                   ; x origin
        .db 3                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 82: 'R'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 26                  ; # moves
        .db 1                   ; x origin
        .db 9                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 83: 'S'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 12                  ; height
        .db 15                  ; # moves
        .db 4                   ; x origin
        .db 7                   ; y origin
        .db 214                 ; move dx=-2, dy=-2, color=fore (set)
        .db 84                  ; move dx=2, dy=-2, color=none (move only!)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 84: 'T'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 19                  ; # moves
        .db 5                   ; x origin
        .db 2                   ; y origin
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 85: 'U'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 27                  ; # moves
        .db 5                   ; x origin
        .db 8                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 86: 'V'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 26                  ; # moves
        .db 4                   ; x origin
        .db 8                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 87: 'W'
        .db 32                  ; class(bits 5-7)
        .db 9                   ; width
        .db 12                  ; height
        .db 42                  ; # moves
        .db 8                   ; x origin
        .db 8                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 126                 ; move dx=-3, dy=-3, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 88: 'X'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 25                  ; # moves
        .db 5                   ; x origin
        .db 4                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 89: 'Y'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 4                   ; x origin
        .db 4                   ; y origin
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 90: 'Z'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 91: '['
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 0                   ; x origin
        .db 3                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 92: '\'
        .db 32                  ; class(bits 5-7)
        .db 7                   ; width
        .db 12                  ; height
        .db 16                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 93: ']'
        .db 32                  ; class(bits 5-7)
        .db 2                   ; width
        .db 12                  ; height
        .db 15                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 94: '^'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 12                  ; height
        .db 7                   ; # moves
        .db 1                   ; x origin
        .db 3                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 95: '_'
        .db 32                  ; class(bits 5-7)
        .db 6                   ; width
        .db 12                  ; height
        .db 4                   ; # moves
        .db 0                   ; x origin
        .db 10                  ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 96: '`'
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 12                  ; height
        .db 3                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        ;; ascii 97: 'a'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 19                  ; # moves
        .db 5                   ; x origin
        .db 5                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 98: 'b'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 19                  ; # moves
        .db 5                   ; x origin
        .db 5                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 99: 'c'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 12                  ; height
        .db 15                  ; # moves
        .db 4                   ; x origin
        .db 5                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        ;; ascii 100: 'd'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 20                  ; # moves
        .db 4                   ; x origin
        .db 2                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 101: 'e'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 17                  ; # moves
        .db 5                   ; x origin
        .db 8                   ; y origin
        .db 20                  ; move dx=0, dy=-2, color=none (move only!)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 102: 'f'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 12                  ; height
        .db 16                  ; # moves
        .db 4                   ; x origin
        .db 2                   ; y origin
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 103: 'g'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 29                  ; # moves
        .db 5                   ; x origin
        .db 8                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 104: 'h'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 20                  ; # moves
        .db 1                   ; x origin
        .db 9                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 105: 'i'
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 12                  ; height
        .db 16                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 106: 'j'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 12                  ; height
        .db 16                  ; # moves
        .db 3                   ; x origin
        .db 2                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 122                 ; move dx=-3, dy=3, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 107: 'k'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 19                  ; # moves
        .db 4                   ; x origin
        .db 4                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 208                 ; move dx=2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 108: 'l'
        .db 32                  ; class(bits 5-7)
        .db 1                   ; width
        .db 12                  ; height
        .db 17                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 109: 'm'
        .db 32                  ; class(bits 5-7)
        .db 9                   ; width
        .db 12                  ; height
        .db 25                  ; # moves
        .db 5                   ; x origin
        .db 5                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 66                  ; move dx=-2, dy=0, color=none (move only!)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 110: 'n'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 18                  ; # moves
        .db 1                   ; x origin
        .db 9                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 111: 'o'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 15                  ; # moves
        .db 5                   ; x origin
        .db 5                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 112: 'p'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 21                  ; # moves
        .db 5                   ; x origin
        .db 5                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 156                 ; move dx=0, dy=-3, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 40                  ; move dx=1, dy=1, color=none (move only!)
        .db 64                  ; move dx=2, dy=0, color=none (move only!)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 113: 'q'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 25                  ; # moves
        .db 5                   ; x origin
        .db 8                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 226                 ; move dx=-3, dy=0, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 114: 'r'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 12                  ; height
        .db 13                  ; # moves
        .db 4                   ; x origin
        .db 4                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 115: 's'
        .db 32                  ; class(bits 5-7)
        .db 4                   ; width
        .db 12                  ; height
        .db 12                  ; # moves
        .db 4                   ; x origin
        .db 5                   ; y origin
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 194                 ; move dx=-2, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 248                 ; move dx=3, dy=3, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 254                 ; move dx=-3, dy=-3, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 16                  ; move dx=0, dy=2, color=none (move only!)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 116: 't'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 12                  ; height
        .db 13                  ; # moves
        .db 1                   ; x origin
        .db 2                   ; y origin
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 117: 'u'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 22                  ; # moves
        .db 5                   ; x origin
        .db 8                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 118: 'v'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 20                  ; # moves
        .db 4                   ; x origin
        .db 8                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 119: 'w'
        .db 32                  ; class(bits 5-7)
        .db 9                   ; width
        .db 12                  ; height
        .db 32                  ; # moves
        .db 8                   ; x origin
        .db 8                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 174                 ; move dx=-1, dy=-1, color=fore (set)
        .db 126                 ; move dx=-3, dy=-3, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 120: 'x'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 22                  ; # moves
        .db 1                   ; x origin
        .db 9                   ; y origin
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 46                  ; move dx=-1, dy=-1, color=none (move only!)
        .db 12                  ; move dx=0, dy=-1, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 148                 ; move dx=0, dy=-2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 8                   ; move dx=0, dy=1, color=none (move only!)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 121: 'y'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 28                  ; # moves
        .db 5                   ; x origin
        .db 8                   ; y origin
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 122: 'z'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 14                  ; # moves
        .db 0                   ; x origin
        .db 4                   ; y origin
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 192                 ; move dx=2, dy=0, color=fore (set)
        ;; ascii 123: '{'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 12                  ; height
        .db 15                  ; # moves
        .db 1                   ; x origin
        .db 3                   ; y origin
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 124: '|'
        .db 32                  ; class(bits 5-7)
        .db 0                   ; width
        .db 12                  ; height
        .db 5                   ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 152                 ; move dx=0, dy=3, color=fore (set)
        .db 136                 ; move dx=0, dy=1, color=fore (set)
        ;; ascii 125: '}'
        .db 32                  ; class(bits 5-7)
        .db 3                   ; width
        .db 12                  ; height
        .db 16                  ; # moves
        .db 0                   ; x origin
        .db 2                   ; y origin
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 172                 ; move dx=1, dy=-1, color=fore (set)
        .db 144                 ; move dx=0, dy=2, color=fore (set)
        .db 162                 ; move dx=-1, dy=0, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 44                  ; move dx=1, dy=-1, color=none (move only!)
        .db 32                  ; move dx=1, dy=0, color=none (move only!)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 168                 ; move dx=1, dy=1, color=fore (set)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 210                 ; move dx=-2, dy=2, color=fore (set)
        .db 160                 ; move dx=1, dy=0, color=fore (set)
        ;; ascii 126: '~'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 9                   ; # moves
        .db 5                   ; x origin
        .db 4                   ; y origin
        .db 42                  ; move dx=-1, dy=1, color=none (move only!)
        .db 98                  ; move dx=-3, dy=0, color=none (move only!)
        .db 34                  ; move dx=-1, dy=0, color=none (move only!)
        .db 140                 ; move dx=0, dy=-1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        .db 170                 ; move dx=-1, dy=1, color=fore (set)
        .db 224                 ; move dx=3, dy=0, color=fore (set)
        ;; ascii 127: '<non standard>'
        .db 32                  ; class(bits 5-7)
        .db 5                   ; width
        .db 12                  ; height
        .db 0                   ; # moves
