puts 'Bem vindo ao Cookbook sua rede social de receitas!'

receitas = []
while (true)
  

puts 'Digite o nome da receita: '
receita = gets.chomp
receitas << receita
puts
puts "Receita #{receita} cadastrada com sucesso!!"
puts
puts "========= Receitas cadastradas ========="
  receitas.each  do |r|
    puts r
  end
end