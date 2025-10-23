class MicroondasUnidade
  def aquecer_por(tempo)
    puts "Aquecendo por #{tempo} segundos..."
  end
end

class DMail
  attr_reader :conteudo, :hora_envio

  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end
end

class TelefoneDeMicroondas
  def initialize
    @unidade = MicroondasUnidade.new
    @dmails = []                    
  end

  def enviar_dmail
    print "Digite o conteúdo do D-Mail: \n"
    #conteudo = gets.chomp
    conteudo = "Dmail..."
    puts conteudo
    
    print "Digite a hora de envio (ex: 10:30): \n"
    #hora_envio = gets.chomp
    hora_envio = "10:00"
    puts hora_envio
    
    @unidade.aquecer_por(5)

    dmail = DMail.new(conteudo, hora_envio)
    @dmails << dmail

    puts "D-Mail enviado com sucesso!\n\n"
  end

  def listar_dmails(horario_corte)
    puts "\nD-Mails após #{horario_corte}:"
    selecionados = @dmails.select { |d| d.hora_envio > horario_corte }

    if selecionados.empty?
      puts "Nenhum D-Mail encontrado após esse horário."
    else
      selecionados.each do |d|
        puts "- [#{d.hora_envio}] #{d.conteudo}"
      end
    end
  end
end

telefone = TelefoneDeMicroondas.new
opcao = 0 

loop do
  puts "\n1. Enviar D-Mail"
  puts "2. Listar D-Mails após um horário"
  puts "3. Sair"
  print "Escolha uma opção: \n"
  # opcao = gets.chomp.to_i
  opcao += 1
  puts opcao
  
  case opcao
  when 1
    telefone.enviar_dmail
  when 2
    print "Digite o horário de corte (ex: 09:00): \n"
    # corte = gets.chomp
    corte = "09:00"
    telefone.listar_dmails(corte)
  when 3
    puts "Encerrando..."
    break
  else
    puts "Opção inválida!"
  end
end
