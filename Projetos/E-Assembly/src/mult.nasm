; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

; Carrego RAM[1] -> NVEZES em D
leaw $1, %A
movw (%A), %D ;D = ram[1]

; Salvo NVEZES em uma váriavel var1
leaw $var1, %A ; nvezes
movw  %D , (%A) ;ram[var1] = ram[1]

; Pego res e zero
leaw $res, %A
movw $0, (%A)

; Verifico se NVEZES é zero, se sim acabou
leaw $END, %A
je %D
nop

LOOP:
; Faz soma e guarda resultado
leaw $0, %A    ; vai ir somando
movw (%A), %D  ;D = ram[0]
leaw $res, %A
addw %D, (%A), %D ; D = ram[0] + res (ant)
movw %D, (%A) ; RAM[res] = ram[0] + res (ant)

; Decrementa NVEZES
leaw $var1, %A ; nvezes
movw (%A), %D ; D = nvezes
decw %D 
movw %D, (%A) ; grava na memoria

; Verifica se acabou
leaw $END, %A  ;< ou = a 0 ele salta 
jle
nop
leaw $LOOP, %A
jmp
nop

END:
;Grava resultado na RAM[3]
leaw $res, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)
