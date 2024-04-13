/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pilhas.Pilhas;

/**
 *
 * @author Alunos
 */
public class main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        PilhaVetor pilhaA=new PilhaVetor(8);
        
        pilhaA.empilhar("A");
        pilhaA.empilhar("B");
        pilhaA.empilhar("C");
        pilhaA.empilhar("D");
        System.out.println("Pilha cheia?: "+pilhaA.verificaPilhaCheia());
        System.out.println("Desempilhar: " + pilhaA.desempilhar());
        System.out.println("Desempilhar: " + pilhaA.desempilhar());
        System.out.println("Desempilhar: " + pilhaA.desempilhar());
        System.out.println("Desempilhar: " + pilhaA.desempilhar());
        
        System.out.println("Pilha vazia?: "+pilhaA.verificaPilhaVazia());
    }
    
}
