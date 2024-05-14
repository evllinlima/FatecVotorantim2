/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Alunos
 */
public class Margem {
    ///Atributos da Classe
    private String nome;
    private String descricao;
    private double percentual;
    
    //CONTRUTOR//
    
    public Margem(String nome, String descricao, double percentual){
        this.nome = nome;
        this.descricao = descricao;
        this.percentual = percentual;
    }
    
    ///Métodos Getters - Produto////
    public String getNome() {
        return this.nome;
    }

    public String getDescricao() {
        return this.descricao;
    }

    public double getPercentual() {
        return this.percentual;
    }
    
    ///METODOS SETTERS//
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public void setPercentual(double percentual) {
        this.percentual = percentual;
    }
}
