module Rastreavel
  def obter_localizacao(hora)
    "Localização às #{hora}: #{@localizacao_atual}"
  end
end

module Perigoso
  def calcular_risco
    rand(1..10) 
  end
end

class Participante
  attr_accessor :nome, :localizacao_atual

  def initialize(nome, localizacao = "Desconhecida")
    @nome = nome
    @localizacao_atual = localizacao
  end

  def to_s
    "#{@nome} (Localização: #{@localizacao_atual})"
  end
end

class Detetive < Participante
  include Rastreavel

  def initialize(nome, localizacao = "Desconhecida")
    super
  end

  def investigar(participante, hora)
    if participante.respond_to?(:obter_localizacao)
      puts "#{nome} investiga #{participante.nome}: #{participante.obter_localizacao(hora)}"
    else
      puts "#{nome} tenta investigar #{participante.nome}, mas ele não é rastreável."
    end
  end
end

class MestreDoCrime < Participante
  include Perigoso
  include Rastreavel 

  def initialize(nome, localizacao = "Desconhecida")
    super
  end

  def planejar_crime
    puts "#{nome} está tramando algo de risco #{calcular_risco}!"
  end
end

class Cenario
  attr_accessor :participantes

  def initialize
    @participantes = []
  end

  def adicionar_participante(participante)
    @participantes << participante
  end

  def identificar_ameacas
    @participantes.select do |participante|
      if participante.respond_to?(:calcular_risco)
        risco = participante.calcular_risco
        risco > 7 
      else
        false
      end
    end
  end

  def lista_rastreavel
    @participantes.select { |p| p.respond_to?(:obter_localizacao) }
  end
end



cenario = Cenario.new

print "Digite a localização atual de Sherlock: \n"
#localizacao_sherlock = gets.chomp
localizacao_sherlock = "Baker Street"
puts localizacao_sherlock

print "Digite a localização atual de Moriarty: \n"
#localizacao_moriarty = gets.chomp
localizacao_moriarty = "Cataratas de Reichenbach"
puts localizacao_moriarty

sherlock = Detetive.new("Sherlock Holmes", localizacao_sherlock)
moriarty = MestreDoCrime.new("Professor Moriarty", localizacao_moriarty)

watson = Detetive.new("Dr. Watson", "Baker Street")
irmao_moriarty = MestreDoCrime.new("Irmão de Moriarty", "Subterrâneos")
civil = Participante.new("Cidadão Comum", "Parque")

cenario.adicionar_participante(sherlock)
cenario.adicionar_participante(moriarty)
cenario.adicionar_participante(watson)
cenario.adicionar_participante(irmao_moriarty)
cenario.adicionar_participante(civil)


puts "\n--- Status Inicial dos Participantes ---"
cenario.participantes.each { |p| puts p }

puts "\n--- Demonstração de Habilidades ---"
sherlock.investigar(moriarty, "14:00")
moriarty.planejar_crime
watson.investigar(civil, "15:00")


puts "\n--- Identificação de Ameaças"
alvos_perigosos = cenario.identificar_ameacas

if alvos_perigosos.empty?
  puts "Nenhum alvo perigoso identificado."
else
  puts "Lista de Alvos Perigosos:"
  alvos_perigosos.each do |alvo|
    puts "- #{alvo.nome} (Risco: #{alvo.calcular_risco})"
  end
end

