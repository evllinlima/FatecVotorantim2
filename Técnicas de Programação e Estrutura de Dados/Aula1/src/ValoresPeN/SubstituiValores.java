/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ValoresPeN;

/**
 *
 * @author Alunos
 */
public class SubstituiValores {
    
    public static char[] substituirValores(int[] vetor) {
        //necessidade de criar o char para a substituição dos valores por letras
        //O char é um tipo de variavel que aceita a inserção de um caractere apenas.
        //Exemplo: char letra = 'S'; lembre-se que a atribuição de valores é realizada atraves de aspas simples (' ')
        char[] vetorAtualizado = new char[vetor.length];
        
        for (int i = 0; i < vetor.length; i++) {
            if (vetor[i] < 0) {
                vetorAtualizado[i] = 'N';
            } else {
                vetorAtualizado[i] = 'P';
            }
        }
        
        return vetorAtualizado;
    }
}
    
