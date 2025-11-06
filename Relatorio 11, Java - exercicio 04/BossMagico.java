public class BossMagico extends Boss {
  public BossMagico(String nome, String id, String fracoContra){
    super(nome, id, fracoContra);
  }
  
  @Override
  public void iniciarFase(){
    System.out.println(this.nome + " está concentrando sua magia");
  }
}