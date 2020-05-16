; Arquivo: SWeLED2.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
;
; Faça os LEDs exibirem 
; LED = SW[8] !SW[7] OFF ON ON RAM[5][3] ON SW[0] OFF
                                                 
;
;                                ^            ^
;                                | TRUQUE!    | TRUQUE!

;SW[8]
leaw $21185, %A  
movw (%A), %D 
leaw $256, %A 
andw %D, %A, %D
leaw $var1, %A  
movw %D, (%A)

;!SW[7]
leaw $21185, %A  
movw (%A), %D
notw %D 
leaw $128, %A%D
andw %D, %A, %D
leaw $var2, %A  
movw %D, (%A)

;OFF ON ON X ON X OFF
;leaw $21185, %A  
;movw (%A), %D
;leaw $52, %A  
;andw %A, %D, %D
;leaw $var3, %A  
;movw %D, (%A)

;RAM[5][3] 
leaw $5, %A  
movw (%A), %D
leaw $8, %A
andw %D, %A, %D
leaw $var4, %A  
movw %D, (%A)

;SW[0]
leaw $21185, %A  
movw (%A), %D
leaw $1, %A
andw %A, %D, %D
leaw $var6, %A 
movw %D, (%A)
addw (%A),%D,%D
leaw $var5, %A  
movw %D, (%A)

;somando tudo
leaw $var2, %A 
movw (%A), %D
leaw $var1, %A 
orw (%A), %D, %D
leaw $var4, %A 
orw (%A), %D, %D
leaw $var5, %A 
orw (%A), %D, %D
leaw $52, %A  
addw %A, %D, %D

leaw $21184, %A
movw %D, (%A) 