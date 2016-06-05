require 'rspec'
require_relative '../model/factorizador'

describe 'Factorizador' do

  it 'que devuelva 2 2 5 cuando factorizar 20' do

    factorizador = Factorizador.new
    expect(factorizador.factorizar 20).to eq [2,2,5]

  end

  it 'que devuelva 11 11 cuando factorizar 121' do

    factorizador = Factorizador.new
    expect(factorizador.factorizar 121).to eq [11,11]

  end


end