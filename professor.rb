class Professor
  attr_reader :ferias, :data_fim_ferias, :data_inicio_ferias
  attr_accessor :nome, :cod_funcionario

  def initialize(nome, cod_funcionario, disciplina)
    @nome = nome
    @cod_funcionario = cod_funcionario
    @disciplina = disciplina
    @ferias = false
    @data_inicio_ferias = ''
    @data_fim_ferias = ''
  end

  def inicia_ferias
    @ferias = true
    @data_inicio_ferias = Time.now
  end
  
  def encerra_ferias
    @ferias = false
    @data_fim_ferias = Time.now
  end
end