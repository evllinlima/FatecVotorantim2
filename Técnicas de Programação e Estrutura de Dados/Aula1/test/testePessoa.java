/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Alunos
 */
import AulaPessoa.Pessoa;
public class testePessoa {
    @Test
    public void testeArvoreGenealogica(){
        Pessoa maria=new Pessoa ("Maria");
        Pessoa isabela=new Pessoa ("Isabela",  maria);
        Pessoa bia = new Pessoa ("Bia", isabela);
        System.out.println(bia.arvoreGenealogica());
        
        assertEquals("Maria -> Isabela -> Bia", bia.arvoreGenealogica());
        
    }
    
}
