public class Youkai extends Entidades{
  private Poder _poder;
  
  public Youkai(String nome, String local, Poder poder){
    super(nome, local, poder);
    this._poder = poder;
  }
  
  public String obterCoordenadas(){
    return getLocalizacao();
  }
}