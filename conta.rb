class Conta
  attr_reader :numero, :titular
  attr_accessor :saldo

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

  def sacar(valor)
    if @saldo >= valor
      @saldo -= valor
    else
      puts 'Saldo indisponível'
      
    end
  end
  
  def depositar(valor)
    @saldo += valor
  end

  def transferir (outra_conta, valor)
    if sacar(valor); true
    outra_conta.depositar(valor)
    else 
      puts 'Não foi possível concluir a transferência'
    end
  end


end