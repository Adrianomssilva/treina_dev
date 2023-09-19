class Turma
  attr_accessor :nome, :num_sala, :professor

  def initialize(nome, num_sala,professor)
    @nome = nome
    @num_sala = num_sala
    @professor = professor
  end
end
