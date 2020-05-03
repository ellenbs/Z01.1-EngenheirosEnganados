; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo

leaw $18789, %A
movw $-1, (%A)
leaw $18790, %A
movw $-1, (%A)
leaw $18809, %A
movw $-1, (%A)
leaw $18810, %A
movw $-1, (%A)

leaw $17989, %A
movw $-1, (%A)
leaw $17990, %A
movw $-1, (%A)
leaw $18009, %A
movw $-1, (%A)
leaw $18010, %A
movw $-1, (%A)
leaw $19589, %A
movw $-1, (%A)
leaw $19590, %A
movw $-1, (%A)
leaw $19609, %A
movw $-1, (%A)
leaw $19610, %A
movw $-1, (%A)

leaw $49152, %A
movw %A, %D
leaw $18029, %A
movw %D, (%A)
leaw $18049, %A
movw %D, (%A)
leaw $18069, %A
movw %D, (%A)
leaw $18089, %A
movw %D, (%A)

leaw $18109, %A
movw %D, (%A)
leaw $18129, %A
movw %D, (%A)
leaw $18149, %A
movw %D, (%A)
leaw $18169, %A
movw %D, (%A)
leaw $18189, %A
movw %D, (%A)

leaw $18209, %A
movw %D, (%A)
leaw $18229, %A
movw %D, (%A)
leaw $18249, %A
movw %D, (%A)
leaw $18269, %A
movw %D, (%A)
leaw $18289, %A
movw %D, (%A)

leaw $18309, %A
movw %D, (%A)
leaw $18329, %A
movw %D, (%A)
leaw $18349, %A
movw %D, (%A)
leaw $18369, %A
movw %D, (%A)
leaw $18389, %A
movw %D, (%A)

leaw $18409, %A
movw %D, (%A)
leaw $18429, %A
movw %D, (%A)
leaw $18449, %A
movw %D, (%A)
leaw $18469, %A
movw %D, (%A)
leaw $18489, %A
movw %D, (%A)

leaw $18509, %A
movw %D, (%A)
leaw $18529, %A
movw %D, (%A)
leaw $18549, %A
movw %D, (%A)
leaw $18569, %A
movw %D, (%A)
leaw $18589, %A
movw %D, (%A)

leaw $18609, %A
movw %D, (%A)
leaw $18629, %A
movw %D, (%A)
leaw $18649, %A
movw %D, (%A)
leaw $18669, %A
movw %D, (%A)
leaw $18689, %A
movw %D, (%A)

leaw $18709, %A
movw %D, (%A)
leaw $18729, %A
movw %D, (%A)
leaw $18749, %A
movw %D, (%A)
leaw $18769, %A
movw %D, (%A)

leaw $18829, %A
movw %D, (%A)
leaw $18849, %A
movw %D, (%A)
leaw $18869, %A
movw %D, (%A)
leaw $18889, %A
movw %D, (%A)

leaw $18909, %A
movw %D, (%A)
leaw $18929, %A
movw %D, (%A)
leaw $18949, %A
movw %D, (%A)
leaw $18969, %A
movw %D, (%A)
leaw $18989, %A
movw %D, (%A)

leaw $19009, %A
movw %D, (%A)
leaw $19029, %A
movw %D, (%A)
leaw $19049, %A
movw %D, (%A)
leaw $19069, %A
movw %D, (%A)
leaw $19089, %A
movw %D, (%A)

leaw $19109, %A
movw %D, (%A)
leaw $19129, %A
movw %D, (%A)
leaw $19149, %A
movw %D, (%A)
leaw $19169, %A
movw %D, (%A)
leaw $19189, %A
movw %D, (%A)

leaw $19209, %A
movw %D, (%A)
leaw $19229, %A
movw %D, (%A)
leaw $19249, %A
movw %D, (%A)
leaw $19269, %A
movw %D, (%A)
leaw $19289, %A
movw %D, (%A)

leaw $19309, %A
movw %D, (%A)
leaw $19329, %A
movw %D, (%A)
leaw $19349, %A
movw %D, (%A)
leaw $19369, %A
movw %D, (%A)
leaw $19389, %A
movw %D, (%A)

leaw $19409, %A
movw %D, (%A)
leaw $19429, %A
movw %D, (%A)
leaw $19449, %A
movw %D, (%A)
leaw $19469, %A
movw %D, (%A)
leaw $19489, %A
movw %D, (%A)

leaw $19509, %A
movw %D, (%A)
leaw $19529, %A
movw %D, (%A)
leaw $19549, %A
movw %D, (%A)
leaw $19569, %A
movw %D, (%A)


; COMEÇO DO n

leaw  $17973, %A
movw $-1, (%A)
leaw  $17974, %A
movw $-1, (%A)

leaw  $17993, %A
movw $-1, (%A)
leaw  $17994, %A
movw $-1, (%A)

leaw $49152, %A
movw %A,%D
leaw $18013, %A
movw %D, (%A)
leaw $18033, %A
movw %D, (%A)
leaw $18053, %A
movw %D, (%A)
leaw $18073, %A
movw %D, (%A)
leaw $18093, %A
movw %D, (%A)
leaw $18113, %A
movw %D, (%A)
leaw $18133, %A
movw %D, (%A)
leaw $18153, %A
movw %D, (%A)
leaw $18173, %A
movw %D, (%A)
leaw $18193, %A
movw %D, (%A)

leaw $18213, %A
movw %D, (%A)
leaw $18233, %A
movw %D, (%A)
leaw $18253, %A
movw %D, (%A)
leaw $18273, %A
movw %D, (%A)
leaw $18293, %A
movw %D, (%A)

leaw $18313, %A
movw %D, (%A)
leaw $18333, %A
movw %D, (%A)
leaw $18353, %A
movw %D, (%A)
leaw $18373, %A
movw %D, (%A)
leaw $18393, %A
movw %D, (%A)

leaw $18413, %A
movw %D, (%A)
leaw $18433, %A
movw %D, (%A)
leaw $18453, %A
movw %D, (%A)
leaw $18473, %A
movw %D, (%A)
leaw $18493, %A
movw %D, (%A)

leaw $18513, %A
movw %D, (%A)
leaw $18533, %A
movw %D, (%A)
leaw $18553, %A
movw %D, (%A)
leaw $18573, %A
movw %D, (%A)
leaw $18593, %A
movw %D, (%A)

leaw $18613, %A
movw %D, (%A)
leaw $18633, %A
movw %D, (%A)
leaw $18653, %A
movw %D, (%A)
leaw $18673, %A
movw %D, (%A)
leaw $18693, %A
movw %D, (%A)

leaw $18713, %A
movw %D, (%A)
leaw $18733, %A
movw %D, (%A)
leaw $18753, %A
movw %D, (%A)
leaw $18773, %A
movw %D, (%A)
leaw $18793, %A
movw %D, (%A)

leaw $18813, %A
movw %D, (%A)
leaw $18833, %A
movw %D, (%A)
leaw $18853, %A
movw %D, (%A)
leaw $18873, %A
movw %D, (%A)
leaw $18893, %A
movw %D, (%A)

leaw $18913, %A
movw %D, (%A)
leaw $18933, %A
movw %D, (%A)
leaw $18953, %A
movw %D, (%A)
leaw $18973, %A
movw %D, (%A)
leaw $18993, %A
movw %D, (%A)

leaw $19013, %A
movw %D, (%A)
leaw $19033, %A
movw %D, (%A)
leaw $19053, %A
movw %D, (%A)
leaw $19073, %A
movw %D, (%A)
leaw $19093, %A
movw %D, (%A)

leaw $19113, %A
movw %D, (%A)
leaw $19133, %A
movw %D, (%A)
leaw $19153, %A
movw %D, (%A)
leaw $19173, %A
movw %D, (%A)
leaw $19193, %A
movw %D, (%A)

leaw $19213, %A
movw %D, (%A)
leaw $19233, %A
movw %D, (%A)
leaw $19253, %A
movw %D, (%A)
leaw $19273, %A
movw %D, (%A)
leaw $19293, %A
movw %D, (%A)

leaw $19313, %A
movw %D, (%A)
leaw $19333, %A
movw %D, (%A)
leaw $19353, %A
movw %D, (%A)
leaw $19373, %A
movw %D, (%A)
leaw $19393, %A
movw %D, (%A)

leaw $19413, %A
movw %D, (%A)
leaw $19433, %A
movw %D, (%A)
leaw $19453, %A
movw %D, (%A)
leaw $19473, %A
movw %D, (%A)
leaw $19493, %A
movw %D, (%A)

leaw $19513, %A
movw %D, (%A)
leaw $19533, %A
movw %D, (%A)
leaw $19553, %A
movw %D, (%A)
leaw $19573, %A
movw %D, (%A)
leaw $19593, %A
movw %D, (%A)

leaw $19613, %A
movw %D, (%A)
leaw $19633, %A
movw %D, (%A)
leaw $19653, %A
movw %D, (%A)

; Segunda perna

leaw $17975, %A
movw %D, (%A)
leaw $17995, %A
movw %D, (%A)
leaw $18015, %A
movw %D, (%A)
leaw $18035, %A
movw %D, (%A)
leaw $18055, %A
movw %D, (%A)
leaw $18075, %A
movw %D, (%A)
leaw $18095, %A
movw %D, (%A)
leaw $18115, %A
movw %D, (%A)
leaw $18135, %A
movw %D, (%A)
leaw $18155, %A
movw %D, (%A)
leaw $18175, %A
movw %D, (%A)
leaw $18195, %A
movw %D, (%A)

leaw $18215, %A
movw %D, (%A)
leaw $18235, %A
movw %D, (%A)
leaw $18255, %A
movw %D, (%A)
leaw $18275, %A
movw %D, (%A)
leaw $18295, %A
movw %D, (%A)

leaw $18315, %A
movw %D, (%A)
leaw $18335, %A
movw %D, (%A)
leaw $18355, %A
movw %D, (%A)
leaw $18375, %A
movw %D, (%A)
leaw $18395, %A
movw %D, (%A)

leaw $18415, %A
movw %D, (%A)
leaw $18435, %A
movw %D, (%A)
leaw $18455, %A
movw %D, (%A)
leaw $18475, %A
movw %D, (%A)
leaw $18495, %A
movw %D, (%A)

leaw $18515, %A
movw %D, (%A)
leaw $18535, %A
movw %D, (%A)
leaw $18555, %A
movw %D, (%A)
leaw $18575, %A
movw %D, (%A)
leaw $18595, %A
movw %D, (%A)

leaw $18615, %A
movw %D, (%A)
leaw $18635, %A
movw %D, (%A)
leaw $18655, %A
movw %D, (%A)
leaw $18675, %A
movw %D, (%A)
leaw $18695, %A
movw %D, (%A)

leaw $18715, %A
movw %D, (%A)
leaw $18735, %A
movw %D, (%A)
leaw $18755, %A
movw %D, (%A)
leaw $18775, %A
movw %D, (%A)
leaw $18795, %A
movw %D, (%A)

leaw $18815, %A
movw %D, (%A)
leaw $18835, %A
movw %D, (%A)
leaw $18855, %A
movw %D, (%A)
leaw $18875, %A
movw %D, (%A)
leaw $18895, %A
movw %D, (%A)

leaw $18915, %A
movw %D, (%A)
leaw $18935, %A
movw %D, (%A)
leaw $18955, %A
movw %D, (%A)
leaw $18975, %A
movw %D, (%A)
leaw $18995, %A
movw %D, (%A)

leaw $19015, %A
movw %D, (%A)
leaw $19035, %A
movw %D, (%A)
leaw $19055, %A
movw %D, (%A)
leaw $19075, %A
movw %D, (%A)
leaw $19095, %A
movw %D, (%A)

leaw $19115, %A
movw %D, (%A)
leaw $19135, %A
movw %D, (%A)
leaw $19155, %A
movw %D, (%A)
leaw $19175, %A
movw %D, (%A)
leaw $19195, %A
movw %D, (%A)

leaw $19215, %A
movw %D, (%A)
leaw $19235, %A
movw %D, (%A)
leaw $19255, %A
movw %D, (%A)
leaw $19275, %A
movw %D, (%A)
leaw $19295, %A
movw %D, (%A)

leaw $19315, %A
movw %D, (%A)
leaw $19335, %A
movw %D, (%A)
leaw $19355, %A
movw %D, (%A)
leaw $19375, %A
movw %D, (%A)
leaw $19395, %A
movw %D, (%A)

leaw $19415, %A
movw %D, (%A)
leaw $19435, %A
movw %D, (%A)
leaw $19455, %A
movw %D, (%A)
leaw $19475, %A
movw %D, (%A)
leaw $19495, %A
movw %D, (%A)

leaw $19515, %A
movw %D, (%A)
leaw $19535, %A
movw %D, (%A)
leaw $19555, %A
movw %D, (%A)
leaw $19575, %A
movw %D, (%A)
leaw $19595, %A
movw %D, (%A)

leaw $19615, %A
movw %D, (%A)
leaw $19635, %A
movw %D, (%A)
leaw $19655, %A
movw %D, (%A)

; Começo do G

leaw $17997, %A
movw $-1, (%A)
leaw $17998, %A
movw $-1, (%A)
leaw $18017, %A
movw $-1, (%A)
leaw $18018, %A
movw $-1, (%A)
leaw $19597, %A
movw $-1, (%A)
leaw $19598, %A
movw $-1, (%A)
leaw $19617, %A
movw $-1, (%A)
leaw $19618, %A
movw $-1, (%A)

leaw $49152, %A
movw %A, %D
leaw $18037, %A
movw %D, (%A)
leaw $18057, %A
movw %D, (%A)
leaw $18077, %A
movw %D, (%A)
leaw $18097, %A
movw %D, (%A)

leaw $18117, %A
movw %D, (%A)
leaw $18137, %A
movw %D, (%A)
leaw $18157, %A
movw %D, (%A)
leaw $18177, %A
movw %D, (%A)
leaw $18197, %A
movw %D, (%A)

leaw $18217, %A
movw %D, (%A)
leaw $18237, %A
movw %D, (%A)
leaw $18257, %A
movw %D, (%A)
leaw $18277, %A
movw %D, (%A)
leaw $18297, %A
movw %D, (%A)

leaw $18317, %A
movw %D, (%A)
leaw $18337, %A
movw %D, (%A)
leaw $18357, %A
movw %D, (%A)
leaw $18377, %A
movw %D, (%A)
leaw $18397, %A
movw %D, (%A)

leaw $18417, %A
movw %D, (%A)
leaw $18437, %A
movw %D, (%A)
leaw $18457, %A
movw %D, (%A)
leaw $18477, %A
movw %D, (%A)
leaw $18497, %A
movw %D, (%A)

leaw $18517, %A
movw %D, (%A)
leaw $18537, %A
movw %D, (%A)
leaw $18557, %A
movw %D, (%A)
leaw $18577, %A
movw %D, (%A)
leaw $18597, %A
movw %D, (%A)

leaw $18617, %A
movw %D, (%A)
leaw $18637, %A
movw %D, (%A)
leaw $18657, %A
movw %D, (%A)
leaw $18677, %A
movw %D, (%A)
leaw $18697, %A
movw %D, (%A)

leaw $18717, %A
movw %D, (%A)
leaw $18737, %A
movw %D, (%A)
leaw $18757, %A
movw %D, (%A)
leaw $18777, %A
movw %D, (%A)
leaw $18797, %A
movw %D, (%A)

leaw $18817, %A
movw %D, (%A)
leaw $18837, %A
movw %D, (%A)
leaw $18857, %A
movw %D, (%A)
leaw $18877, %A
movw %D, (%A)
leaw $18897, %A
movw %D, (%A)

leaw $18917, %A
movw %D, (%A)
leaw $18937, %A
movw %D, (%A)
leaw $18957, %A
movw %D, (%A)
leaw $18977, %A
movw %D, (%A)
leaw $18997, %A
movw %D, (%A)

leaw $19017, %A
movw %D, (%A)
leaw $19037, %A
movw %D, (%A)
leaw $19057, %A
movw %D, (%A)
leaw $19077, %A
movw %D, (%A)
leaw $19097, %A
movw %D, (%A)

leaw $19117, %A
movw %D, (%A)
leaw $19137, %A
movw %D, (%A)
leaw $19157, %A
movw %D, (%A)
leaw $19177, %A
movw %D, (%A)
leaw $19197, %A
movw %D, (%A)

leaw $19217, %A
movw %D, (%A)
leaw $19237, %A
movw %D, (%A)
leaw $19257, %A
movw %D, (%A)
leaw $19277, %A
movw %D, (%A)
leaw $19297, %A
movw %D, (%A)

leaw $19317, %A
movw %D, (%A)
leaw $19337, %A
movw %D, (%A)
leaw $19357, %A
movw %D, (%A)
leaw $19377, %A
movw %D, (%A)
leaw $19397, %A
movw %D, (%A)

leaw $19417, %A
movw %D, (%A)
leaw $19437, %A
movw %D, (%A)
leaw $19457, %A
movw %D, (%A)
leaw $19477, %A
movw %D, (%A)
leaw $19497, %A
movw %D, (%A)

leaw $19517, %A
movw %D, (%A)
leaw $19537, %A
movw %D, (%A)
leaw $19557, %A
movw %D, (%A)
leaw $19577, %A
movw %D, (%A)

leaw $19579, %A
movw %D, (%A)
leaw $19599, %A
movw %D, (%A)
leaw $19619, %A
movw %D, (%A)

;Começo da segunda parte





leaw $19019, %A
movw %D, (%A)
leaw $19039, %A
movw %D, (%A)
leaw $19059, %A
movw %D, (%A)
leaw $19079, %A
movw %D, (%A)
leaw $19099, %A
movw %D, (%A)

leaw $19119, %A
movw %D, (%A)
leaw $19139, %A
movw %D, (%A)
leaw $19159, %A
movw %D, (%A)
leaw $19179, %A
movw %D, (%A)
leaw $19199, %A
movw %D, (%A)

leaw $19219, %A
movw %D, (%A)
leaw $19239, %A
movw %D, (%A)
leaw $19259, %A
movw %D, (%A)
leaw $19279, %A
movw %D, (%A)
leaw $19299, %A
movw %D, (%A)

leaw $19319, %A
movw %D, (%A)
leaw $19339, %A
movw %D, (%A)
leaw $19359, %A
movw %D, (%A)
leaw $19379, %A
movw %D, (%A)
leaw $19399, %A
movw %D, (%A)

leaw $19419, %A
movw %D, (%A)
leaw $19439, %A
movw %D, (%A)
leaw $19459, %A
movw %D, (%A)
leaw $19479, %A
movw %D, (%A)
leaw $19499, %A
movw %D, (%A)

leaw $19519, %A
movw %D, (%A)
leaw $19539, %A
movw %D, (%A)
leaw $19559, %A
movw %D, (%A)
leaw $19579, %A
movw %D, (%A)

leaw $18999, %A
movw %D, (%A)


leaw $19018, %A
movw $-1, (%A)
leaw $18998, %A
movw $-1, (%A)












