/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Triangulo;

/**
 *
 * @author Alunos
 */
public class calcularAreaTriangulo {
    public static double calcularArea(double[] Triangulo){
        double cateto1 = Triangulo[0];
        double cateto2 = Triangulo[1];
        
        double area = (cateto1 * cateto2) / 2;
        return area;
        
    }
    
}

