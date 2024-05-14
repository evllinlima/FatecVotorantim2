
package Model;

import java.util.ArrayList;
import java.util.List;


public class Produto {

    //Atributos da Classe
    private int id;
    private String nome;
    private String descricao;
    private List imposto;
    private List materiaPrima;
    private List margens;
    private double valorVenda;

    
    /////**Construtor***///
    public Produto(int id, String nome, String descricao) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        imposto = new ArrayList();
        materiaPrima = new ArrayList();
        margens = new ArrayList();
        valorVenda = 0;
    }
    
    public Produto (int id, String nome, String descricao, List imposto, List materiaPrima, List margens){
        this(id, nome, descricao);
        this.imposto = imposto;
        this.materiaPrima = materiaPrima;
        this.margens = margens;
    }

    ///Métodos Getters - Produto////
    public int getId() {
        return this.id;
    }

    public String getNome() {
        return this.nome;
    }

    public String getDescricao() {
        return this.descricao;
    }
    

    ///Métodos Setters - Produto///
    public void setId(int id) {
        this.id = id;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    ///Adicionar na lista
    public void adicionarImposto(Imposto taxaProd){
        imposto.add(taxaProd);
        }
    
    public boolean removeImposto (Imposto taxaProd){
        return imposto.remove(taxaProd);
    }
}
