
CADASTRAR_RECEITA = 1
LISTA_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

puts 'Bem vindo ao Cookbook sua rede social de receitas!'

def menu
  puts "[#{CADASTRAR_RECEITAS}] Cadastrar uma receita"
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
opcao = menu
receitas = []
while (opcao != 3)
  if opcao == 1
    receitas << cadastrar_receita
  elsif opcao == 2
    lista_receitas(receitas)
  else
    puts "Digite uma opção válida!"
  end
  opcao = menu
end
puts "Obrigado por usar o Cookbook!!"
