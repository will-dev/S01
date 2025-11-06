import java.util.HashMap;

public class Batalha {
  private HashMap<String, Boss> _arena;
  
  public Batalha(HashMap<String, Boss> arena){
    this._arena = arena;
  }
  
  public void adicionarBoss(Boss boss){
    _arena.put(boss.getId(), boss);
  }
  
  public void iniciarBatalha(String id){
    System.out.println("A batalha com " + this._arena.get(id).nome + " irá começar");
    this._arena.get(id).iniciarFase();
  }
}