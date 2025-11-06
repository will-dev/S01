import java.util.ArrayList;

public class Menu {
  private ArrayList<Cafe> itens = new ArrayList<Cafe>();
 
  public Menu(){
    this.itens = new ArrayList<Cafe>();
  }
  
  public ArrayList<Cafe> getItens(){
    return itens;
  }
  
  public void adicionarItem(Cafe cafe){
    itens.add(cafe);
  }
}
  