use std::io;

fn eh_par(numero: i32) -> bool{
    numero % 2 == 0
}

fn main(){
  let mut entrada = String::new();
  println!("par ou impar?");
  io::stdin().read_line(&mut entrada).expect("Valor inválido. Por favor, digite novamente.");

  let mut entrada2 = String::new();
  println!("Digite um número: ");
  io::stdin().read_line(&mut entrada2).expect("Valor inválido. Por favor, digite novamente.");

  let numero1: i32 = entrada2
    .trim()
    .parse()
    .expect("Por favor, digite um número válido.");

  entrada2 = String::new();
  println!("Digite outro número: ");
  io::stdin().read_line(&mut entrada2).expect("Valor inválido. Por favor, digite novamente.");
  let numero2: i32 = entrada2
    .trim()
    .parse()
    .expect("Por favor, digite um número válido.");
  
  let soma = numero1 + numero2;
  if eh_par(soma) && entrada.trim() == "par" || !eh_par(soma) && entrada.trim() == "impar"{
    println!("Jogador 1 ganhou!");
  } else {
    println!("Jogador 2 ganhou!");  
  }
}