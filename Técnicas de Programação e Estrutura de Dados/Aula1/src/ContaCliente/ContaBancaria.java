package ContaCliente;


//float, char, double e int é minusculo, pois é primitivo//
public class ContaBancaria {
    private float saldoDaConta;
    private String extrato;
    private String TipoConta;
    private String StatusConta;
   
    //*****Metodo*****//
 public ContaBancaria(float saldoDaConta, String TipoConta){
        this.saldoDaConta=saldoDaConta;
        this.extrato="Meu extrato";
        this.StatusConta="Aberto";
        this.TipoConta=TipoConta;
    }

 
public void Depositar(float Deposito){
    this.saldoDaConta+=Deposito; 
    this.extrato = this.extrato + " Deposito de " + Deposito;
}

 public void Retirar(float Saida){
    this.saldoDaConta-=Saida;
    this.extrato = this.extrato + "Saida de " + Saida;
 }
 
 public double Retornar(){
     return getSaldoDaConta();
 }
 
public void Cobrar(){
     if (TipoConta.equals("Conta Corrente")){
         this.saldoDaConta-= 9.99;
         this.extrato= this.extrato + "Taxa de Conta Corrente " + 9.99 + " ";}
     else{
         this.saldoDaConta-= 19.99;
         this.extrato= this.extrato + "Taxa de Conta Poupança " + 19.99 + " ";
     }
}
 
public String getExtrato(){
     return extrato;
}
 public float getSaldoDaConta(){
         return saldoDaConta;
}
 public String getTipoConta(){
     return TipoConta;
 }
}