use std::io;

fn verificar_senha(senha: &str) -> bool {
    senha.len() >= 8 && senha.chars().any(|c| c.is_digit(10)) && senha.chars().any(|c| c.is_uppercase())
}

fn main(){
  let mut senha = String::new();
  loop{
    println!("Digite a senha: ");
    io::stdin().read_line(&mut senha).expect("Valor inválido. Por favor, digite novamente.");
    if verificar_senha(&senha){
      println!("Senha válida!");
      break;
    }
  }
  println!("Acesso permitido!");
}