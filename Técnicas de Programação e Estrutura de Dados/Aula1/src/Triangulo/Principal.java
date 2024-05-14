/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Triangulo;

import static Triangulo.calcularAreaTriangulo.calcularArea;

/**
 *
 * @author Alunos
 */
public class Principal {

    public static void main(String[] args) {
        
        double[] catetos = {6, 8}; // Exemplo de catetos
        double area = calcularArea(catetos);
        
        
        System.out.println("A area do triangulo e: " + area);
        
    }

}
