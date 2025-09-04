fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64{
  let media: f64 = nota1*0.2 + nota2*0.3 + nota3*0.5;
  return media
  }

fn main(){
  let nota1: f64 = 7.0;
  let nota2: f64 = 8.0;
  let nota3: f64 = 9.0;
  let media: f64 = calcular_media(nota1, nota2, nota3);
  if media >= 7.0{
    println!("Aprovado com média: {}", media);
  } else {
    println!("Reprovado com média: {}", media);
  }
}

