public class Alien extends Entidades {
  private String planetaOrigem;
  private String ovni;
  
  public Alien(String nome, String planeta, String ovni, Poder poder){
    super(nome, planeta, poder);
    this.planetaOrigem = planeta;
    this.ovni = ovni;
  }
  
  public String obterCoordenadas(){
    return this.planetaOrigem;
  }
}