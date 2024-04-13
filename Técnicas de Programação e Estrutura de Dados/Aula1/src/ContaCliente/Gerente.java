/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ContaCliente;

/**
 *
 * @author Alunos
 */
public class Gerente {
    public static void main(String[] args) {
    Cliente Evellin = new Cliente("Evellin", "5047895788", "Rua: Campinas, 444");
    
        System.out.println("Meu nome é "+ Evellin.getNome());
        System.out.println("Meu cpf "+ Evellin.getCpf());
        System.out.println("Meu endereço "+ Evellin.getEndereco());
    
        
//Para alterar o parametro já incluso//
        Evellin.setNome("Amanda");
        System.out.println("\nMeu nome é "+ Evellin.getNome());
        
        Evellin.setCpf("647386468");
        System.out.println("Meu cpf é "+ Evellin.getCpf());
        
        Evellin.setEndereco("Av Dom Aguirre, 345");
        System.out.println("Meu endereço é "+ Evellin.getEndereco());
        
        
       ContaBancaria Conta = new ContaBancaria(1000,"Conta Corrente");
        System.out.println("\nO saldo da sua conta é "+Conta.getSaldoDaConta() );
        System.out.println("O tipo da conta é "+ Conta.getTipoConta());
        
        Conta.Depositar(100);
        Conta.Retirar(50);
        
        System.out.println("O saldo da sua conta é "+Conta.Retornar());
        System.out.println("O tipo da conta é "+ Conta.getTipoConta());
        
        System.out.println(Conta.getExtrato());
        
        
    }
    
}
