package GUI;

public class Calcular {
    public static double somar (double n1, double n2){
            return n1 + n2;    
}
     public static double subtrair (double n1, double n2){
            return n1 - n2;    
}
      public static double multiplicar (double n1, double n2){
            return n1 * n2;    
}
       public static double dividir (double n1, double n2){
           if (n2 !=0) return n1/n2; 
           
           else return Double.POSITIVE_INFINITY;  
}
}
