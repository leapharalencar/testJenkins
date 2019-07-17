# frozen_string_literal: true

require_relative '../app/conta.rb'

describe('Saque') do
  it('saque no caixa') do
    conta = Conta.new('Raphael')
    conta.saldo = 1000
    conta.saque(100)
    expect(conta.saldo).to eql 900
  end
  it('valor superior') do
    conta = Conta.new('Raphael')
    conta.saldo = 500
    conta.saque(600)
    expect(conta.saldo).to eql 500
  end
  it('saque no caixa') do
    conta = Conta.new('Raphael')
    conta.saldo = 1000
    conta.saque(701)
    expect(conta.saldo).to eql 1000
  end
end
