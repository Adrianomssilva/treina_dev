class Turma
  attr_accessor :alunos

  def initialize
    @alunos = []
  end

  def add_alunos (aluno)
    alunos << aluno
  end

  def count_alunos
    puts alunos.length
  end

end
