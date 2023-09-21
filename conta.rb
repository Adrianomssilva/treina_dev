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
    sacar(valor)
    outra_conta.depositar(valor)
  end


end