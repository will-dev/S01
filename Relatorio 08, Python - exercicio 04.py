from abc import ABC, abstractmethod

class Cibernetico(ABC):
  @abstractmethod
  def realizar_hack(self):
    pass



class Implante:
  def __init__(self, custo:int, funcao:str):
    self.custo = custo
    self.funcao = funcao



class NetRunner(Cibernetico):
  def __init__(self, nome:str, implante:Implante):
    self.__nome = nome
    self.__implante = implante
    
  def realizar_hack(self):
    print(f"{self.__nome} está realizando um hack utilizando o implante {self.__implante.funcao}.")



class Faccao:
  def __init__(self, ciber:list[Cibernetico]):
    self.__ciber = ciber

  def executar_hack_em_massa(self):
    print("== A facção iniciou uma invasão coordenada! ==")
    for membro in self.__ciber:
      membro.realizar_hack()


  
if __name__ == "__main__":
  n1 = NetRunner("n1", Implante(1000, "Neural Hack"))
  n2 = NetRunner("n2", Implante(2000, "Invasor de Sistemas"))
  n3 = NetRunner("n3", Implante(3000, "Decodificador Quântico"))

  faccao = Faccao([n1, n2, n3])
  faccao. executar_hack_em_massa()
  
  