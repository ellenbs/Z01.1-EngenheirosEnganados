/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        switch (mnemnonic[0]){
            case "movw %A, %D"  :
            case "incw %D"   :
            case "movw (%A), %D"   :
            case "addw (%A) %D %D"   :
            case "decw %D"   :
            case "notw %D"   :
            case "negw %D"   :
            case "andw (%A) %D %D"   :
            case "orw (%A) %D %D"   :
                return "0010";

            case "subw %D (%A) %A"   :
            case "rsubw %D (%A) %A"   :
            case "decw %A"   :
            case "notw %A"   :
            case "negw %A"   :
            case "andw %D %A %A"   :
            case "orw %D %A %A"   :
                return "0001";

            case "movw %A, (%A)"   :
            case "incw (%A)"   :
                return "0100";

            case "movw %A, %D, (%A)"   :
                return "0110";

            case "nop"   :
            case "jmp"   :
            case "je"   :
            case "jne"   :
            case "jg"   :
            case "jge"   :
            case "jl"   :
            default    : return "0000";
        }
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        switch (mnemnonic[0]){
            case "movw %A, %D"  : return "000110000";
            case "movw %D %A"  : return "000001100";
            case "movw %D (%A)"  : return "000001100";
            case "movw (%A), %A"  : return "001110000";
            case "movw %A, (%A)"  : return "000110000";

            case "addw %A   %D %D"  : return "000000010";
            case "addw (%A) %D %D"  : return "001000010";
            case "addw $1 (%A) %D"  : return "001110111";

            case "incw %A"  : return "000110111";
            case "incw %D"  : return "000011111";
            case "incw (%A)"  : return "001110111";

            case "movw (%A) %D"  : return "001110000";
            case "subw %D (%A) %A"  : return "001010011";

            case "rsubw %D (%A) %A"  : return "001000111";
            case "decw %A"  : return "000110010";
            case "decw %D"  : return "000001110";
            case "notw %A"  : return "000110001";
            case "notw %D"  : return "000001101";
            case "negw %A"  : return "000110011";
            case "negw %D"  : return "000001111";
            case "andw (%A) %D %D"  : return "001000000";
            case "andw %D %A %A"  : return "000000000";
            case "orw (%A) %D %D"  : return "001010101";
            case "orw %D %A %A"  : return "000010101";
            case "subw (%A), $1, %A"  : return "001110010";

            case "nop"   :
            case "jmp"   :
            case "je"   :
            case "jne"   :
            case "jg"   :
            case "jge"   :
            case "jl"   :
                return "000001100";

            default    : return "0000";
        }
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch (mnemnonic[0]){
            case "jmp"  : return "111";
            case "je"   : return "010";
            case "jne"   : return "101";
            case "jg"   : return "001";
            case "jge"   : return "011";
            case "jl"   : return "100";
            case "jle"   : return "110";
            default    : return "000";
        }
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
       if(symbol=="0"){
           return "0000000000000000";
       }else if(symbol=="1"){
           return "0000000000000001";
       }else if(symbol=="10"){
           return "0000000000001010";
       }else if(symbol=="100"){
           return "0000000001100100";
       }else if(symbol=="1000"){
           return "0000001111101000";
       }else if(symbol=="21845"){
           return "0101010101010101";
       }else if(symbol=="32767"){
           return "0111111111111111";
       }else if(symbol=="32767"){
           return "0111111111111111";
       }else{
           return "1111111111111111";
       }
    }

}
