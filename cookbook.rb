
CADASTRAR_RECEITA = 1
LISTA_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

puts 'Bem vindo ao Cookbook sua rede social de receitas!'

def menu
  puts "[#{CADASTRAR_RECEITA}] Cadastrar uma receita"
  puts "[#{LISTA_RECEITAS}] Ver todas as receitas"
  puts "[#{BUSCAR_RECEITAS}] Buscar Receitas"
  puts "[#{SAIR}] Sair"

  print "Escolha uma opção: "
  gets.to_i
end

def cadastrar_receita
  puts 'Digite o nome da receita: '
    nome = gets.chomp
    puts 'Digite o tipo da receita: '
    tipo = gets.chomp
    puts
    puts "Receita #{nome} cadastrada com sucesso!!"
    puts
    {nome: nome, tipo: tipo}
end

def lista_receitas(valor)
  puts "========= Receitas cadastradas ========="
    valor.each  do |receita|
      puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
end

def buscar_receitas (receitas)
  puts "Digite o nome ou tipo da receita que deseja buscar: "
  nome =  gets.chomp.downcase
  receitas.each do |receita|
    if receita[:nome].downcase == nome || receita[:tipo].downcase == nome
      puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
  end
end

opcao = menu
receitas = []
loop do
  if opcao == CADASTRAR_RECEITA
    receitas << cadastrar_receita
  elsif opcao == LISTA_RECEITAS
    lista_receitas(receitas)
  elsif opcao == BUSCAR_RECEITAS
    buscar_receitas(receitas)
  elsif opcao == SAIR
    break
  else
    puts "Digite uma opção válida!"
  end
  opcao = menu
end
puts "Obrigado por usar o Cookbook!!"
