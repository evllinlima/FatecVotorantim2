/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula1;

/**
 *
 * @author Alunos
 */
public class Aula1 {

    public static void main(String[] args) {
        Aula1 vM1=new Aula1();
        int[] entrada=new int[]{0,1,2,3,4,5,6,7};
        int[] saida;
        saida=vM1.inverteVetor(entrada);
        String retorno="";
        String entradaConcatenada="";
        
        for(int i=0; i<8; i++){
            retorno+=saida[i];
            entradaConcatenada+=entrada[i];
        }
        System.out.println("vetor entrada: "+entradaConcatenada);
        System.out.println("Vetor invertido: "+retorno);
        
        
    }
    public int[] inverteVetor(int[] vetorEntrada){
        /* Crie um método que converta o vetor de entrada
        e retorne o vetor invertido
        */
        
        int[] vetorSaida=new int[8];
        
        for(int i=0; i<8;i++){
            vetorSaida[7-i]=vetorEntrada[i];
        }
        return vetorSaida;  
}
    public int[][] concatenaVetorEmMatriz(int[] vetor1, int[] vetor2, int[] vetor3);
    int[][] matrizSaida=new int[0][3];
    
    for(int i=0;i<8;i++){
        matrizSaida[i][0]=vetor1
        matrizSaida[i][1]=vetor2
        matrizSaida[i][2]=vetor3
}
}
