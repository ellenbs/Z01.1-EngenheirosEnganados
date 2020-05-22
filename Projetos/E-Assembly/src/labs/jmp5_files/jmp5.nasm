

;Acione a metade superior dos pxs do LCD de preto.

;contador comeca no endereco inicial do LCD
leaw $16384, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

LOOP:
  leaw $0, %A
  movw (%A), %D
  incw %D
  movw %D, (%A)  
  movw %D, %A
  movw $-1, (%A)

  leaw $18784, %A
  subw %D, %A, %D
  leaw $LOOP, %A
  jl
  nop