package GUI;

import javax.swing.JFrame;
//Inicia a criação da classe Exemplo 01
public class Exemplo1 {
    private JFrame janela;
   
    
    public Exemplo1(){
        janela=new JFrame("Minha Janela");
        janela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        janela.setSize(400, 300);
        /*Para a janela aparecer é preciso dessa declaração abaixo*/
        janela.setVisible(true);
        
}
    public static void main (String[] args){
        System.out.println("Metodo principal");
        Exemplo1 p = new Exemplo1();
        
    }
    
}
