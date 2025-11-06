public class Cafe {
  public String nome;
  public Double precoBase;
  
  public Cafe(String nome, Double precoBase){
    this.nome = nome;
    this.precoBase = precoBase;
  }
  
  public Double calcularPrecoFinal(){
    return precoBase;
  }
}