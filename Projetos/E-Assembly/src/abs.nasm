; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

leaw $1, %A
movw (%A), %D ; busca valor verificar (RAM[1])
leaw $END, %A ; prepara salto
jge      ; RAM[1] == 0?
nop
negw %D
END:
leaw $0, %A
movw %D, (%A) ; RAM[0] =abs( RAM[1] )
