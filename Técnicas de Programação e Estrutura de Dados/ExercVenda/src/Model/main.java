/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Alunos
 */
public class main {

    public static void main(String args[]) {
        Produto novoProduto = new Produto(0, "Caneta", "Caneta Colorida");
        Imposto taxaProd = new Imposto("IPI", "Imposto sobre o produto", 40);
        novoProduto.adicionarImposto(taxaProd);
        System.out.println("O valor do imposto " + taxaProd.getNome() + " e de R$" + taxaProd.getValorPercentual() + "\n");
        System.out.println("O produto desejado e " + novoProduto.getNome() + " " + "sendo uma " + novoProduto.getDescricao()+ "\n");
        
        MateriaPrima matPrima = new MateriaPrima("Tinta azul", "Tinta para o cartucho da caneta", 0);
        matPrima.adicionarImposto(taxaProd);
        System.out.println("Uma das materias primas para a criacao da caneta e " + matPrima.getNome() + "que serve para " + matPrima.getDescricao()+ "\n");
             
        Margem margemPorcenc = new Margem ("Cartucho", "Embalagem da caneta", 20);
        System.out.println("O lucro da producao da caneta com relacao a " + margemPorcenc.getDescricao() + "sera de " + margemPorcenc.getPercentual());               
    }

}
