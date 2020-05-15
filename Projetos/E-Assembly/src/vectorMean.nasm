; ------------------------------------
; Calcule a média dos valores de um vetor
; que possui inicio em RAM[5] e tamanho
; defindo em RAM[4],
;
; 1. Salve a soma em RAM[1]
; 2. Salve a média em RAM[0]
; 
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  2  : média 
; RAM[1]:     | RAM[1]:  8  : soma
; RAM[2]:     | RAM[2]:  
; RAM[3]:     | RAM[3]:  
; RAM[4]:  4  | RAM[4]:  4 
; RAM[5]:  1  | RAM[5]:  1 - 
; RAM[6]:  2  | RAM[6]:  2 | vetor
; RAM[7]:  1  | RAM[7]:  1 |
; RAM[8]:  4  | RAM[8]:  4 -
; ------------------------------------


leaw $4, %A
movw %A, %D

leaw $4, %A
addw (%A), %D, %D

leaw $3, %A
movw %D, (%A)  ; move tamanho do vetor para a RAM[3]

leaw $4, %A
movw (%A), %D

leaw $2, %A
movw %D, (%A)


WHILE:
leaw $2, %A
movw (%A), %D
decw %D
movw %D, (%A)

leaw $END, %A
jl
nop

leaw $3, %A
movw (%A), %A

movw (%A), %D

leaw $1, %A
addw (%A), %D, %D
movw %D, (%A)         ; RAM[1] += RAM[x]

leaw $3, %A
movw (%A), %D
decw %D
movw %D, (%A)

leaw #WHILE, %A
jmp
nop

END:

;0 - 1
;1 - 4
;2 - 0 


leaw $0, %A
movw $1, (%A)

leaw $1, %A
movw (%A), %D ; D = RAM[0]

leaw $3, %A
movw %D, (%A) ; RAM[3] = RAM[0]

WHILED:
leaw $3, %A
movw (%A), %D

leaw $4, %A
subw %D, (%A), %D ; RAM[3] - RAM[1]
leaw $3, %A
movw %D, (%A)

leaw $ENDD, %A
jle
nop

leaw $0, %A
movw (%A), %D
incw %D
movw %D, (%A) ; RAM[2] += 1

leaw $WHILED, %A
jmp
nop

ENDD: