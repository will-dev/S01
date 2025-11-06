import java.util.HashMap;

public class Registros {
  public String nomeEquipe;
  private HashMap<Entidades, String> _avistamentos = new HashMap<>();
  
  public Registros(String nome){
    this.nomeEquipe = nome;
  }
  
  public Boolean registrarAvistamento(Entidades entidade, String nome){
    if(_avistamentos.put(entidade, nome) == null){
      return true;
    }
    else {
      return false;
    }
  }
  
  public void exibirAvistamentos(){
    _avistamentos.forEach((chave, valor) -> {
    System.out.println(chave.nome + " -> " + valor);
});
  }
}