public class CafeLeblanc {
  private Menu _menu;
  
  public CafeLeblanc(Menu menu){
    this._menu = menu;
  }
  
  public void receberPedido(Cafe cafe){
    System.out.println("O preço total do pedido será: R$" + cafe.calcularPrecoFinal());
  }
}