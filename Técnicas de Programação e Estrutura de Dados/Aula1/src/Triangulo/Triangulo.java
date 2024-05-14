/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Triangulo;

/**
 *
 * @author Alunos
 */
public class Triangulo {
    public double cateto1;
    public double cateto2;
    public double area;
    

//********Metodo************//
    public Triangulo(double cateto1, double cateto2){
        this.cateto1=cateto1;
        this.cateto2=cateto2;
}

    public double getCateto1() {
        return cateto1;
    }

    public double getCateto2() {
        return cateto2;
    }

    public void setCateto1(double cateto1) {
        this.cateto1 = cateto1;
    }

    public void setCateto2(double cateto2) {
        this.cateto2 = cateto2;
    }
    
    
    
}
