/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Alunos
 */
public class Imposto {

    ///Atributos da Classe
    private String nome;
    private String descricao;
    private double valorPercentual;

////**Construtor***///
    public Imposto(String nome, String descricao, double valorPercentual) {
        this.nome = nome;
        this.descricao = descricao;
        this.valorPercentual = valorPercentual;
    }

///Métodos Getters - Produto////
    public String getNome() {
        return this.nome;
    }

    public String getDescricao() {
        return this.descricao;
    }

    public double getValorPercentual() {
        return this.valorPercentual;
    }

    ///Métodos Setters - Produto///
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public void setValorPercentual(double valorPercentual) {
        this.valorPercentual = valorPercentual;
    }
}
