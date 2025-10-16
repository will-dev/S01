class ArmaCorpoACorpo:
  def __init__(self, nome:str):
    self.nome = nome


class PhantomThieves:
  def __init__(self, nome:str, arma:ArmaCorpoACorpo):
    self.nome = nome
    self.arma = arma

class Joker:
  def __init__(self, nome:str, phantom:list[PhantomThieves]):
    self.__nome = nome
    self.__arma = ArmaCorpoACorpo("Faca")
    self.__phantom = phantom

  def mostrar_equipe(self):
    print(f"Equipe de {self.__nome} (arma: {self.__arma.nome}):")
    for phantom in self.__phantom:
      print(f"Nome: {phantom.nome}, Arma: {phantom.arma.nome}")

  
if __name__ == "__main__":
  morgana = PhantomThieves("Morgana", ArmaCorpoACorpo("Clava"))
  ann =  PhantomThives("Ann", ArmaCorpoACorpo("Revolver"))

  joker = Joker("Joker", [morgana, ann])

  joker.mostrar_equipe()
  