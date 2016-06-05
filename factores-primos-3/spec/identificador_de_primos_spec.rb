require 'rspec'
require_relative '../model/identificador_de_primos'

describe 'IdentificadorDePrimos' do

  it 'que devuelva true cuando 3 es_primo?' do

    identificador = IdentificadorDePrimos.new
    expect(identificador.es_primo? 3).to eq true

  end

  it 'que devuelva true cuando 7 es_primo?' do

    identificador = IdentificadorDePrimos.new
    expect(identificador.es_primo? 7).to eq true

  end

  it 'que devuelva true cuando 1 es_primo?' do

    identificador = IdentificadorDePrimos.new
    expect(identificador.es_primo? 1).to eq true

  end

  it 'que devuelva false cuando 4 es_primo?' do

    identificador = IdentificadorDePrimos.new
    expect(identificador.es_primo? 4).to eq false

  end

end
