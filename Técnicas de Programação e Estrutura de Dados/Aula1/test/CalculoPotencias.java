/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Aula1803.Matematica;
import org.junit.Test;
import static org.junit.Assert.*;


public class CalculoPotencias {
    //Para a criação de um teste, deve ser criado um J UNIT dentro do pacote teste. 
    @Test
    public void testePotenciaDeDoisElevadoAZero(){
        Matematica mat = new Matematica();
        //Teste 2^0 = 1
        int base=2;
        int potencia=0;
        //assertEquals faz a comparação
        assertEquals(1, mat.pot (base,potencia));
        
    }
    
    @Test
    public void testePotenciaDeDoisElevadoAUm(){
        Matematica mat = new Matematica();
        //Teste 2^1 = 2
        int base=2;
        int potencia=1;
        //assertEquals faz a comparação
        assertEquals(2, mat.pot (base,potencia));
    }
    
    @Test
    public void testePotenciaDeDoisElevadoADois(){
        Matematica mat = new Matematica();
        //Teste 2^2 = 4
        int base=2;
        int potencia=2;
        //assertEquals faz a comparação
        assertEquals(4, mat.pot (base,potencia));
    }
    @Test
    public void testePotenciaDeDoisElevadoATres(){
        Matematica mat = new Matematica();
        //Teste 2^3 = 4
        int base=2;
        int potencia=3;
        //assertEquals faz a comparação
        assertEquals(8, mat.pot (base,potencia));
    }
    
    @Test
    public void testePotenciaDeDoisElevadoAQuatro(){
        Matematica mat = new Matematica();
        //Teste 2^4 = !
        int base=2;
        int potencia=4;
        //assertEquals faz a comparação
        assertEquals(16, mat.pot (base,potencia));
}
}


    