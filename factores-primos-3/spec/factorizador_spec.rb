require 'rspec'
require_relative '../model/factorizador'

describe 'Factorizador' do

  it 'should return 2 2 5 when buscar_menor_divisor 20' do

    factorizador = Factorizador.new
    expect(factorizador.factorizar 20).to eq [2,2,5]

  end


end