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
        String d = "0";
        String a = "0";
        String m = "0";
        int l = mnemnonic.length;

        if (( l < 4) && (!( mnemnonic[0]==("movw") && l==3)) || mnemnonic[0]==("subw") || mnemnonic[0]==("addw") || mnemnonic[0]==("rsubw")  ){
            //  movw %D, %A, %A
            //  incw %A
            switch (mnemnonic[l-1]) {
                case "%A":
                    a = "1";
                    d = "0";
                    m = "0";
                    break;
                case "%D":
                    d = "1";
                    a = "0";
                    m = "0";
                    break;
                case "(%A)":
                    m = "1";
                    d = "0";
                    a = "0";
                    break;
                default:
                    break;
            }
        } else {
             d = "0";
             a = "0";
             m = "0";
            // movw %D, %A, %D, (%A), %A
            for (int i = 0; i <= l - 3; i++) {
                switch (mnemnonic[l - i - 1]) {
                    case "%A":
                        a = "1";

                        break;
                    case "%D":
                        d = "1";

                        break;
                    case "(%A)":
                        m = "1";

                        break;
                    default:
                        break;
                }
            }
        }
        String resultado= ("0"+m+d+a);
        System.out.println(resultado);
        return (resultado);
        }


    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        switch (mnemnonic[0]){
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
        int value = Integer.valueOf(symbol);
        String binary = Integer.toBinaryString(value);
        return String.format("%1$16s", binary).replace(" ", "0");
    }
}