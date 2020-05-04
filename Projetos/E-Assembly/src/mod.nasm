; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Calcule o resto da divisão de RAM[0] por RAM[1] e salve o resultado em RAM[2]

leaw $0, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)

leaw $3, %A
movw (%A), %D
leaw $1, %A
subw %D, (%A), %D
leaw $3, %A
movw %D, (%A)

WHILE:
leaw $3, %A
movw (%A), %D
leaw $END, %A
jle
nop

leaw $3, %A
movw (%A),%D
leaw $2, %A
movw %D, (%A)

leaw $4, %A
movw (%A), %D
incw %D
movw %D, (%A)

leaw $3, %A
movw (%A), %D
leaw $1, %A
subw %D, (%A), %D
leaw $3, %A
movw %D, (%A)
leaw $WHILE, %A
jmp
nop

END:
leaw $3, %A
movw $0, (%A)