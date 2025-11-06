public class Entidades implements IRastreavel{
  public String nome;
  private String localizacao;
  
  public Entidades(String nome, String local, Poder poder){
    this.nome = nome;
    this.localizacao = local;
  }
  
  public String getLocalizacao() {
      return localizacao;
  }
  public String obterCoordenadas(){
    return localizacao;
  }
}