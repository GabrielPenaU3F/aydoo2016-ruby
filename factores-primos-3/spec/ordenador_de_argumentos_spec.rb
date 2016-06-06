=begin
require 'rspec'
require_relative '../model/ordenador_de_argumentos'

describe 'OrdenadorDeArgumentos' do

  it 'que devuelva 2 2 5 cuando factorizar 20' do

    factorizador = Factorizador.new
    expect(factorizador.factorizar 20).to eq [2,2,5]

  end



end
=end
