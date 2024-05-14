
package PersistenciaDados;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class TesteMotocicleta {
    
    public static void main (String[] args){
        Motocicleta motoca = new Motocicleta("Honda", "CG 150", 100);
        System.out.println("Velocidade atual " + motoca.getVelocidade());
        Motocicleta motoca2 = null;
        motoca.alterarVelocidade(1.5f);
        System.out.println("Velocidade Atual: " + motoca.getVelocidade());
        try{
        Serializador.gravar("motoca.dat", motoca);
        }
        catch(IOException ex){
            System.out.println("Erro Gravar: "+ex.getMessage());
        }
        try{
        motoca2 = (Motocicleta)Serializador.ler("motoca.dat");
        }
        catch(ClassNotFoundException ex){
            Logger.getLogger(TesteMotocicleta.class.getName()).log(Level.SEVERE,null,ex);
        }
        catch(IOException ex){
            System.out.println("Erro Gravar: "+ex.getMessage());
        }
    }
    
    
}
