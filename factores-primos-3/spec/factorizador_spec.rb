require 'rspec'
require_relative '../model/factorizador'

describe 'Factorizador' do

  it 'should return 2 2 5 when factorizar 20' do

    factorizador = Factorizador.new
    expect(factorizador.factorizar 20).to eq [2,2,5]

  end

  it 'should return 11 11 when factorizar 121' do

    factorizador = Factorizador.new
    expect(factorizador.factorizar 121).to eq [11,11]

  end


end