public class CafeGourmet extends Cafe{
  public Double bonusAroma;
  
  public CafeGourmet(String nome, Double preco, Double bonus){
    super(nome, preco);
    this.bonusAroma = bonus; 
  }
  
  @Override
  public Double calcularPrecoFinal(){
    return this.precoBase + bonusAroma;
  }
}