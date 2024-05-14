/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ValoresPeN;

import static ValoresPeN.SubstituiValores.substituirValores;
import java.util.Arrays;

public class Principal {

    public static void main(String[] args) {
        // aqui faz a substituição pelos valores do vetor
        int[] vetor = {3, -5, 40, -2, 7};
        //para mostrar os vetor inseridos nesse parametros é necessário transforma-los em string
        System.out.println("Os vetores inseridos sao: " + Arrays.toString(vetor));
        char[] vetorAtualizado = substituirValores(vetor);
        
        System.out.print("Vetor atualizado: ");
        for (int i = 0; i < vetorAtualizado.length; i++) {
            System.out.print(vetorAtualizado[i] + " ");
        }
    }
}

   