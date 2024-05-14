/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Balanceamento;

/**
 *
 * @author Alunos
 */
public class Balanceamento {
    public static void main(String[] arg){
        String vetor[]=new String[]{"(",")"};
        validaBalanceamento(vetor);
        System.out.println(validaBalanceamento(vetor));
        
        String vetor2[]=new String[]{"(","}"};
        System.out.println(validaBalanceamento(vetor2));
        
    }
    public static boolean validaBalanceamento(String[] vetor){
        
        Pilha p = new Pilha();
        
        for(int i=0; i<vetor.length;i++){
            //vetor[i]==simbolo de abertura
            if(vetor[i]== "(" || vetor[i] == "{" || vetor[i]== "["){
                //vetor[i]==simbolo de fechamento
                if(vetor[i]== "(")
                    p.empilhar(")");
                else if(vetor[i]== "{")
                    p.empilhar("}");
                else if(vetor[i]== "[")
                    p.empilhar("]");
            }
            
            if(vetor[i]== ")" || vetor[i] == "}" || vetor[i]== "}"){
                
                if(p.pilhaVazia())
                    return false;
                else if(vetor[i] != p.desempilhar())
                    return false;
                    
            }
            
        }
        if(p.pilhaVazia())
            return true;
        return false;
    }
    
}
