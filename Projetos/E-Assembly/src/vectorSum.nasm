;---------------------------------------------------------
; 
; > arquivo: `/src/nasm/vectorSum.nasm`
; 
; | teste | O que testa                   | Valor   |
; |-------|-------------------------------|---------|
; | 1     | exemplo, vetor fixo tamanho 5 | 5 pts   |
; | 2     | vetor tamanho qualquer        | 5 pts   |
; 
; Faz a soma de todos os valores de um
; vetor e atualizar a RAM[0] com o resultado. Assuma que:
; 
; - a `RAM[1]` indica o tamanho do vetor
; - o vetor é uma região contínua da RAM
;   - vetor começa sempre na `RAM[4]`
; - resultado salvar em `RAM[0]`
; 
; Considere o exemplo (teste 1) com um vetor de tamanho 5.
; 
; - Exemplo:
; 
; Vector = [15, 11, 15, 20, 12]
; Resultado = 61
; 
;   RAM[ 0] : 61  <---- Resultado, soma vetor
;   RAM[ 1] : 5   x----                     
;   RAM[ 2] :         |   livre para uso
;   RAM[ 3] :         |   livre para uso
;   RAM[ 4] : 15   ---|---
;   RAM[ 5] : 11      |
;   RAM[ 6] : 15      | Tamanho do vetor = 5
;   RAM[ 7] : 20      |
;   RAM[ 8] : 12   ---|---
;   RAM[ 9] : 0
;   RAM[10] : 11
;   RAM[11] : 2
;---------------------------------------------------------


;R1 com tamanho-1
leaw $1, %A
movw (%A), %D
decw %D
movw %D, (%A)

; R2 com indice da ram )(comeca em 4)
leaw $4, %A
movw %A, %D
leaw $2, %A
movw %D, (%A)

; soma na R0 -> comeca em com o valor da R4
leaw $4, %A
movw (%A), %D
leaw $0, %A
movw %D, (%A)

WHILE:          

; incrementa o 'indice (R2) e salva de volta em R2
leaw $2, %A      
movw (%A), %D
incw %D
movw %D, (%A)

; faz a soma e guarda o resultado no R0
leaw $2, %A      
movw (%A), %D          ;pega o indice da RAM
movw %D, %A
movw (%A), %D           ;pega o valor da RAM naquele indice
leaw $0, %A      
addw (%A), %D, %D
movw %D, (%A)


; D = contador - tamanho
;se for igual a zero, acabou
leaw $1, %A
movw (%A), %D 
decw %D
movw %D, (%A)

leaw $WHILE, %A
jne
;nop


