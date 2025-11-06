public class Mago extends Personagem{
  private String magia;
  
  public Mago(String nome, Integer idade, String magia){
    super(nome, idade);
    this.magia = magia;
  }
  
  public String getNome(){
    return this.nome;
  }
  
  public String lancarFeitico(){
    return "O mago " + this.nome + " invoca a magia " + this.magia;
  }
}