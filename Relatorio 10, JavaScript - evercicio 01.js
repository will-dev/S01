class Pokemon
{
    #vida;
    
    constructor(nome, tipo, vidaInicial){
      this.nome = nome;
      this.tipo = tipo;
      this.#vida = vidaInicial;
    }
    
    getVida(){
      return this.#vida;
    }
    
    receberDano(dano){
      this.#vida -= dano;
      console.log(`${this.nome} recebeu ${dano} de dano. \n${this.nome} | Vida: ${this.#vida}\n`);
    }
    
    atacar(alvo){
      console.log(`Ataca ${alvo.nome}`);
    }
}

class PokemonFogo extends Pokemon
{
  constructor(nome, tipo, vidaInicial, bonus){
    super(nome, tipo, vidaInicial);
    this.bonusAtaque = bonus;
  }
  
  atacar(alvo){
    console.log(`${this.nome} ataca ${alvo.nome} com ${this.bonusAtaque}`);
  }
}


class PokemonAgua extends Pokemon
{
  #curaBase
  constructor(nome, tipo, vidaInicial, curaBase){
    super(nome, tipo, vidaInicial);
    this.#curaBase = curaBase;
  }
  
  atacar(alvo){
    console.log(`${this.nome} ataca ${alvo.nome}`);
  }
}

//main
const charizard = new PokemonFogo("Charizard", "Fogo/Voador", 20, "Flamethrower");
const blastoise = new PokemonAgua("Blastoise", "Agua", 20, 5);

blastoise.atacar(charizard);
charizard.receberDano(10);
charizard.atacar(blastoise);
blastoise.receberDano(3);
