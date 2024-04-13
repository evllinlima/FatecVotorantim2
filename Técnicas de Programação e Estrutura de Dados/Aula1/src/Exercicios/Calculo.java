/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Exercicios;

import java.util.Scanner;

public class Calculo {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int comando = -1;
        int x;
        int y;
        int z;
        int result;
        
        /*É preciso instanciar um objeto calculo para conseguir chamar esse método na principal. Para instaniar é utilizado o new*/
        Calculadora C = new Calculadora();

        /*Para o iniciar o comando. Enquando o valor do comando for diferente de zero. SHIT ALT F PARA ORGANIZAR O COD*/
        while (comando != 0) {
            System.out.println("Entre com o comando desejado: \n"
                    + "1 - Soma \n"
                    + "2 - Subtração \n"
                    + "3 - Multiplicar \n"
                    + "4 - Divisão \n");
            comando = input.nextInt();
            
            /*Para o loop funcionar somente com os padrões definidos no menu*/
            if (comando > 0 && comando < 5){
            
                /*Para dar input e ler o que entrou*/
            System.out.println("Entre com o primeiro número: ");
            x = input.nextInt();
            System.out.println("Entre com o segundo número: ");
            y = input.nextInt();

            if (comando == 1) {
                System.out.println("O resultado é " + C.soma(x, y));
            }

            if (comando == 2) {
                System.out.println("O resultado é " + C.subtracao(x, y));
            }

            if (comando == 3) {
                System.out.println("O resultado é " + C.multiplicacao(x, y));
            }

            if (comando == 4) {
                System.out.println("O resultado é " + C.divisao(x, y));
            }
            /*Para ele aceitar somente o que esta no comando*/
            comando = -1;
            }
        }
    }
}
