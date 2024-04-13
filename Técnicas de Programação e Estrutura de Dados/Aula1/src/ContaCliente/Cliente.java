apackage ContaCliente;

public class Cliente {
    private String nome;
    private String cpf;
    private String endereco;
    
    
//********Metodo************//
     public Cliente(String nome, String cpf, String endereco){
        this.nome=nome;
        this.cpf=cpf;
        this.endereco=endereco;
    }
    
     public String getNome(){
         return nome;
     }
     
     public String getCpf(){
         return cpf;
     }
     
     public String getEndereco(){
     return endereco;
     }
     
     public void setNome(String Nome){
         this.nome=Nome;
     }
     
     public void setCpf(String Cpf){
         this.cpf=Cpf;
     }
     public void setEndereco(String Endereco){
         this.endereco=Endereco;
     }
}
