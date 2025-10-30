class Criatura {
  constructor(nome, perigosa) {
    this.nome = nome;
    this.perigosa = perigosa;
  }
}

class Diario {
  #autorSecreto;
  
  constructor(autor) {
    this.#autorSecreto = autor;
    this.enigmas = new Map();
    this.criaturasAvistadas = [];
  }
  
  getAutor() {
    return this.#autorSecreto;
  }

  adicionarEnigma(num, enigma) {
    this.enigmas.set(num, enigma);
  }

  decodificar(chave, num) {
    if (chave !== this.#autorSecreto) {
      return "Acesso negado! Autor incorreto.";
    }
    return this.enigmas.get(num) || "Enigma não encontrado.";
  }
}

class Personagem {
  constructor(nome, idade) {
    this.nome = nome;
    this.idade = idade;
  }
}

class Protagonista extends Personagem {
  constructor(nome, idade, diario) {
    super(nome, idade);
    this.diario = diario;
  }
}

class CabanaMisterio {
  constructor(diario) {
    this.diario = diario;
    this.visitantes = [];
  }

  adicionarFuncionario(personagem) {
    this.visitantes.push(personagem);
  }

  listarFuncionarios() {
    return this.visitantes;
  }
}

const diario = new Diario("Autor Secreto");
diario.adicionarEnigma(1, "O enigma do bosque...");

const dipper = new Protagonista("Dipper", 12, diario);
const soose = new Personagem("Soos", 22);

const cabana = new CabanaMisterio(diario);
cabana.adicionarFuncionario(soose);

console.log(dipper.diario.decodificar("Autor Secreto", 1)); 
console.log(cabana.listarFuncionarios()); 
