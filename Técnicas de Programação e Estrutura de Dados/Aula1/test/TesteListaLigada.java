import Aula2203.ListaLigada;
import Aula2203.No;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Alunos
 */
public class TesteListaLigada {
    @Test
    public void testeCriacaoDeLista(){
        Object info="Evellin";
        No proximoNo=null;
        No meuPrimeiroNo = new No (info, proximoNo);
        assertEquals("Evellin", meuPrimeiroNo.getInfo());
    }
    
    @Test
    public void testeAdicionarMeuPrimeiroItemoDeLista(){
        ListaLigada minhalista=new ListaLigada();
        
        
    }
    
}
