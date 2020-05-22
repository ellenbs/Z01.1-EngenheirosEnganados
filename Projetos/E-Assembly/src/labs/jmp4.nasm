;if RAM[1] + RAM[2] >= 3: 
 ;   RAM[0] = 1
;else
 ;   RAM[0] = 2

; else
leaw $2, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

;if (RAM[1] + RAM[2]) - 3 >= 0: 
leaw $1, %A
movw (%A), %D
leaw $2, %A
addw (%A), %D, %D
leaw $3, %A
subw %D, %A, %D

leaw $END, %A
jl
nop

leaw $1, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

END:
