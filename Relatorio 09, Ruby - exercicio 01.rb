class Drink
  attr_reader :_nome

  def initialize(nome, preco_base)
    @_nome = nome
    self.preco_base = preco_base
  end

  def preco_base
    @_preco_base
  end

  def preco_base=(novo_preco)
    if novo_preco.is_a?(Numeric) && novo_preco.positive?
      @_preco_base = novo_preco
    else
      raise "O preço deve ser um número positivo!"
    end
  end

  def preco_final
    @_preco_base
  end

  def to_s
    "Drink: #{@_nome} | Preço base: $#{@_preco_base}"
  end
end

class DrinkLenda < Drink
  def initialize(nome, preco_base, anos_desde_criacao)
    super(nome, preco_base)
    @_anos_desde_criacao = anos_desde_criacao
  end

  def preco_final
    @_preco_base + (5 * @_anos_desde_criacao)
  end

  def to_s
    "Drink Lenda: #{@_nome} | Preço base: $#{@_preco_base} | " \
    "Anos desde criação: #{@_anos_desde_criacao} | " \
    "Preço final: $#{preco_final}"
  end
end

# AS LINHAS A SEGUIR ESTÃO COMENTADAS POIS O .chomp ESTÁ DANDO ERRO NO COMPILADOR ONLINE
# puts "Digite o nome do drink:"
# nome = gets.chomp
# puts "Digite o preço base:"
# preco = gets.chomp.to_f
# puts "Digite os anos desde a criação (0 se for comum):"
# anos = gets.chomp.to_i

nome = "Fênix"
preco = 10.0
anos = 3

if anos > 0
  drink = DrinkLenda.new(nome, preco, anos)
else
  drink = Drink.new(nome, preco)
end

puts drink.to_s
puts "Preço final: $#{drink.preco_final}"
