; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe uma linha no LCDD




leaw $0, %A
movw %A, %D
notw %D

leaw $16424, %A
movw %D, (%A) 

incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
incw %A
movw %D, (%A) 
