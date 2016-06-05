require 'rspec'
require_relative '../model/identificador_de_primos'

describe 'IdentificadorDePrimos' do

  it 'should return true when 3 es_primo?' do
    identificador = IdentificadorDePrimos.new
    expect(identificador.es_primo? 3).to eq true
  end

  it 'should return true when 7 es_primo?' do
    identificador = IdentificadorDePrimos.new
    expect(identificador.es_primo? 7).to eq true
  end

  it 'should return true when 1 es_primo?' do
    identificador = IdentificadorDePrimos.new
    expect(identificador.es_primo? 1).to eq true
  end

end
