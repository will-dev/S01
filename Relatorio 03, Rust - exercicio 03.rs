use std::io;

fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32){
  for i in limite_inferior..=limite_superior{
    println!("{} x {} = {} ", numero, i, numero*i)
  }
}

fn main(){
  let mut entrada = String::new();
  
  println!("Digite o número: ");
  io::stdin().read_line(&mut entrada).expect("Valor inválido. Por favor, digite novamente.");
  let numero: i32 = entrada.trim().parse().expect("Valor inválido. Por favor, digite novamente.");

  entrada.clear();
  println!("Digite o limite inferior: ");
  io::stdin().read_line(&mut entrada).expect("Valor inválido. Por favor, digite novamente.");
  let limite_inferior: i32 = entrada.trim().parse().expect("Valor inválido. Por favor, digite novamente.");

  entrada.clear();
  println!("Digite o limite superior: ");
  io::stdin().read_line(&mut entrada).expect("Valor inválido. Por favor, digite novamente.");
  let limite_superior: i32 = entrada.trim().parse().expect("Valor inválido. Por favor, digite novamente.");

  imprimir_tabuada(numero, limite_inferior, limite_superior);
}