  class IRastreavel
  {
    reastrearLocal(latitude, longitude){
      throw new Error(`${this.nome} deve implementar o metodo "reastrearLocal()"`);
    }
  }
  
   class Hunter extends IRastreavel
  {
    #nome;
    #idade;
    #localizacao
    
    constructor(nome, local, idade){
      super();
      this.#nome = nome;
      this.#idade = idade;
      this.#localizacao = local;
    }
    
    get nome(){
      return this.#nome;
    }
    
    get localizacao(){
      return this.#localizacao;
    }
    
    set localizacao(novoLocal){
      this.#localizacao = novoLocal;
    }
  }
  
  class Especialista extends Hunter
  {
    #habilidadeNen;
    
    constructor(nome, habilidade, local, idade){
      super(nome, local, idade);
      this.#habilidadeNen = habilidade
    }
    
    rastrearLocal(latitude, longitude){
      this.localizacao = `${latitude}, ${longitude}`;
      return `${this.nome} (Especialista em ${this.#habilidadeNen}) foi rastreado em ${this.localizacao}.`;
    }
  }
  
  class Manipulador extends Hunter
  {
    #alvoAtual;
    
    constructor(nome, local, idade, alvo){
      super(nome, local, idade);
      this.#alvoAtual = alvo;
    }
    
    rastrearLocal(latitude, longitude) {
      this.localizacao = `${latitude}, ${longitude}`;
      return `${this.nome} (Manipulador de ${this.#alvoAtual}) foi rastreado em ${this.localizacao}.`;
    }
  }
  
  class Batalhao
  {
    #hunters;
    
    constructor(){
      this.#hunters = new Set;
    }
    
    adicionarHunter(hunter){
      if(hunter instanceof Hunter){
        if ([...this.#hunters].some(h => h.nome === hunter.nome)) {
        console.log(`Hunter "${hunter.nome}" já está no Batalhão!`);
        return;
        }
      this.#hunters.add(hunter);
      }
    }
    
    getNumHunters(){
      return this.#hunters.size;
    }
    
    iniciarRastreamento(lat, long) {
      const resultados = [];
      this.#hunters.forEach(h => {
        resultados.push(h.rastrearLocal(lat, long));
        
      });
      return resultados;
    }
  }
  
  
const gon = new Especialista("Gon Freecss", "Borda Leste", 14, "Jajanken");
const kurapika = new Manipulador("Kurapika", "Cidade Yorknew", 17, "Correntes");
const hisoka = new Manipulador("Hisoka", "Arena do Céu", 28, "Cartas");

const batalhao = new Batalhao();
batalhao.adicionarHunter(gon);
batalhao.adicionarHunter(kurapika);
batalhao.adicionarHunter(hisoka);
batalhao.adicionarHunter(gon);

console.log(`\nTotal de Hunters no Batalhão: ${batalhao.getNumHunters()}\n`);

console.log("=== Rastreamento Iniciado ===");
batalhao.iniciarRastreamento("34.0522°N", "118.2437°W").forEach(msg => console.log(msg));