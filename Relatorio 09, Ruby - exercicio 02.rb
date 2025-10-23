class Musico
  attr_reader :nome

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "#{self.class} deve implementar o método tocar_partitura"
  end
end

class Pianista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} está tocando #{peca} em seu piano."
  end
end

class Violinista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} está tocando #{peca} em seu violino."
  end
end

class Maestro
  def initialize(musicos = [])
    @musicos = musicos
  end

  def iniciar_ensaio(peca)
    puts "\n Iniciando ensaio da peça '#{peca}'...\n\n"
    @musicos.each { |m| m.tocar_partitura(peca) }
  end

  def mudar_foco
    @musicos.map { |m| puts "#{m.nome} agora está concentrado!" }
  end
end

# ====== MAIN ======
puts "Digite o nome da peça:"
#peca = gets.chomp || LINHA COMENTADA POR PROBLEMAS COM .chomp NO COMPILADOR ONLINE
peca = "In the Hall of the Moutain King"

musicos = [
  Pianista.new("Yuki", "Piano"),
  Violinista.new("Kousei", "Violino")
]

maestro = Maestro.new(musicos)
maestro.mudar_foco
maestro.iniciar_ensaio(peca)
