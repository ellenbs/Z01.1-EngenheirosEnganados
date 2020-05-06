; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.




leaw $0, %A
movw (%A), %D
leaw $RAM0, %A
je
nop


leaw $0, %A
movw (%A), %D

leaw $x, %A
movw %D, (%A) ; x = RAM[0]

leaw $f, %A
movw %D, (%A) ; f = x

leaw $j, %A
movw %D, (%A) ; j = x

WHILE:

; IF J <= 0 SALTA

leaw $j, %A
movw (%A), %D
leaw $END, %A
jle
nop

leaw $mult, %A
movw $0, (%A)   ; mult = 0

leaw $f, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)  ; a = RAM[1] = f

leaw $j, %A
movw (%A) , %D
decw %D

leaw $b, %A
movw %D, (%A)  ; b = j-1

leaw $i, %A
movw $0, (%A)  ; i = 0

WHILE2:
leaw $i, %A
movw (%A), %D

leaw $b, %A
subw %D, (%A) , %D  ; D = i-b

leaw $ENDWHILE2, %A
jge
nop

leaw $1, %A
movw (%A), %D   ; D = a

leaw $mult, %A
addw (%A), %D, %D  
movw %D, (%A)      ; mult += a

leaw $i, %A
movw (%A), %D
incw %D
movw %D, (%A)  ; i += 1

leaw $WHILE2, %A
jmp
nop

ENDWHILE2:

leaw $mult, %A
movw (%A), %D
leaw $f, %A
movw %D, (%A)   ; f = mult

leaw $j, %A
movw (%A), %D
decw %D
movw %D, (%A)   ; j -= 1

leaw $WHILE, %A
jmp
nop

RAM0:
leaw %1, %A
movw $1, (%A)

END:
