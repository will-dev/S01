import java.util.ArrayList;

public class Castelo {
  public String nome;
  private ArrayList<Divisao> divisoes = new ArrayList<Divisao>();
  
  public Castelo(String nome, ArrayList<Divisao> divisoes){
    this.nome = nome;
    this.divisoes = divisoes;
  }
  
  public ArrayList<Divisao> getDivisoes(){
    return this.divisoes;
  }
  
  public void adicionarDivisao(Divisao divisao){
    divisoes.add(divisao);
  }
}