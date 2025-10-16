from abc import ABC, abstractmethod

class Heroi:
  def __init__(self, nome:str, funcao:str):
    self._nome = nome
    self._funcao = funcao

  @abstractmethod
  def virtual usarUltimate(self):
    return f"{self._nome} usou a ultimate!"


class Tank(Heroi):
  def __init__(self, nome:str, funcao:str):
    super().__init__(nome, funcao)
  
  def usarUltimate(self):
    return f"{self._nome} usou a ultimate e agora está invencível!"


class Dano(Heroi):
  def __init__(self, nome:str, funcao:str):
    super().__init__(nome, funcao)

  def usarUltimate(self):
    return f"{self._nome} usou a ultimate e agora está com o dano aumentado!"

if __name__ == "__main__":
  p1 = Tank("Tank", "Tank")
  p2 = Dano("Dano", "Dano")

  personagens = [p1, p2]

  for personagem in personagens:
     print(personagem.usarUltimate())