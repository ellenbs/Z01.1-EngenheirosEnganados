; Arquivo: palindromo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se uma palavra salva na memória
; é um palíndromo ou não. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.
; 
; A palavra possui tamanho fixo de 5 caracteres,
; começando no endereço 10 da RAM e terminando no
; endereço 14 da RAM. A palavra é codificado em
; ASCII.

; exemplo:
;  RAM[10] = a
;  RAM[11] = r
;  RAM[12] = a
;  RAM[13] = r
;  RAM[14] = a
; 

 
 

;a=10 --> R2
;b=14   --> R1
;pal=True
;while (a-b) != 0 and True:
    ;if (R[a] - R[b]) != 0:
        ; pal = False
    ;a+=1
    ;b-=1

;True
leaw $0, %A
movw $1, (%A)

;10 no R2
leaw $10, %A
movw %A, %D
leaw %2, %A
movw %D, (%A)

;14 no R1
leaw $14, %A
movw %A, %D
leaw %1, %A
movw %D, (%A)


LOOP:
;while (a-b) != 0:

leaw $2, %A
movw (%A), %D
leaw $1, %A
subw (%A), %D, %D
leaw $TRUE, %A
je
nop

;if (R[a] - R[b]) != 0:
leaw $2, %A
movw (%A), %D
movw %D, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)

leaw $1, %A
movw (%A), %D
movw %D, %A
movw (%A), %D

leaw $3, %A

subw (%A),%D, %D
leaw $FALSE, %A
jne
nop

;a+=1
leaw $2, %A
movw (%A), %D
incw %D
movw %D, (%A)

;b-=1
leaw $1, %A
movw (%A), %D
decw %D
movw %D, (%A)

leaw $LOOP, %A
jmp
nop

FALSE:
leaw $0, %A
movw $0, (%A)

TRUE:
