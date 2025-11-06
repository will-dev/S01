public class Personagem {
  protected String nome;
  protected Integer idade;
  
  public Personagem(String nome, Integer idade){
    this.nome = nome;
    this.idade = idade;
  }
  
  public void setNome(String nome){
    this.nome = nome;
  }
}