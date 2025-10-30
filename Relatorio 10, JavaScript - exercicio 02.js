class IExplorador
{
  explorarTerritorio(){
    throw new Error(`${this.nome} deve implementar o metodo "explorarTerritorio()"`)
  }
}

class ODM_gear
{
  #gasRestante = 100;
  
  constructor(modelo){
    this.modelo = modelo;
  }
  
  usarGas(quantidade){
    this.#gasRestante -= quantidade;
    console.log(`${this.modelo} usou ${quantidade} de gás`);
  }
  
  getGas(){
    return this.#gasRestante;
  }
}

class Soldado extends IExplorador
{
  #gear;
  
  constructor(nome, modeloGear){
    super();
    this.nome = nome;
    this.#gear = new ODM_gear(modeloGear);
  }
  
  explorarTerritorio(){
    `${this.nome} foi enviado para explorar a região`
    this.#gear.usarGas(10);
  }
  
  verificarEquipamento(){
    return `${this.nome} possui uma ODM_gear do modelo ${this.#gear.modelo} com ${this.#gear.getGas()} de gás restante`;
  }
}

class Esquadrao extends IExplorador
{
  constructor(lider, membrosIniciais = []){
    super();
    this.lider = lider;
    this.membros = membrosIniciais;
  }
  
  explorarTerritorio(){
    console.log(`O esquadrão liderado por ${this.lider.nome} inicia a exploração!`);
    this.membros.forEach(m => m.explorarTerritorio())
  }
  
  adicionarMembro(soldado){
   if (soldado instanceof IExplorador) {
      this.membros.push(soldado);
    } else {
      throw new Error("O membro deve implementar a interface IExplorador.");
    }
  }
  
  relatarStatus(){
    return `Membros ativos:\n${this.membros.map(m => m.nome).join("\n")}`;
  }
}

//main
const levi = new Soldado("Levi Ackerman", "Omni-Directional Gear V2");
const mikasa = new Soldado("Mikasa Ackerman", "Omni-Directional Gear V1");
const eren = new Soldado("Eren Yeager", "Omni-Directional Gear V1");

const esquadraoLevi = new Esquadrao(levi, [mikasa]);
esquadraoLevi.adicionarMembro(eren);

console.log(esquadraoLevi.relatarStatus());

esquadraoLevi.explorarTerritorio();

console.log(mikasa.verificarEquipamento());