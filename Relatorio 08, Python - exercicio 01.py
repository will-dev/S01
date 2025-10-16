class Personagem:
  def __init__(self, vida:int, resistencia:int):
    self.__vida = vida
    self.__resistencia = resistencia

  @property
  def getVida(self):
    return self.__vida

  @vida.setter
  def setVida(self, vida):
    if vida  >= 0:
      self.__vida = vida
    else:
       print("Valor inválida")

  def __str__(self):
    return f"Personagem com {self.__vida} de vida."



class Cavaleiro(Personagem):
  def __init__(self, vida:int, resistencia:int, armaduraPesada:bool):
      super().__innit__(vida, resistencia)
      self.__armaduraPesada = armaduraPesada

  def __str__(self):
    tipo_armadura = "com armadura pesada" if self.__armadura_pesada else "sem armadura pesada"
    return f"Cavaleiro {tipo_armadura} e {self.vida} de vida."



if __name__ == "__main__":
  guerreiro = Cavaleiro(90, 50, True)
  
  print(guerreiro)
  guerreiro.vida = 100
  print(guerreiro)
