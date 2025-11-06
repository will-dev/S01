import java.util.LinkedHashSet;

public class Boss {
  public String nome;
  private String idBoss;
  private String pontoFraco;
  private LinkedHashSet<Ataque> _moveset = new LinkedHashSet<Ataque>();
  
  public Boss(String nome, String id, String fracoContra){
    this.nome = nome;
    this.idBoss = id;
    this.pontoFraco = fracoContra;
  }
  
  public String getId(){
    return idBoss;
  }
  
  public void adicionarAtaque(Ataque ataque){
    _moveset.add(ataque);
  }
  
  public void iniciarFase(){
    System.out.println(nome + " está se preparando para a batalha");
  }
}