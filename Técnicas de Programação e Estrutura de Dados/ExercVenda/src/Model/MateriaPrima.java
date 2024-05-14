/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alunos
 */
public class MateriaPrima {

    ///Atributos da Classe
    private String nome;
    private String descricao;
    private double valorCompra;
    private List imposto;

    ////**Construtor***///
    public MateriaPrima(String nome, String descricao, double valorCompra) {
        this.nome = nome;
        this.descricao = descricao;
        this.valorCompra = valorCompra;
        imposto = new ArrayList();
    }
///METODOS GETTERS//

    public String getNome() {
        return this.nome;
    }

    public String getDescricao() {
        return this.descricao;
    }

    public double getValorCompra() {
        return this.valorCompra;
    }

    ///METODOS SETTERS//
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public void setValorCompra(double valorCompra) {
        this.valorCompra = valorCompra;
    }
    
    public void adicionarImposto(Imposto taxaProd){
        imposto.add(taxaProd);
        }
    
    public boolean removeImposto (Imposto taxaProd){
        return imposto.remove(taxaProd);
    }

}
