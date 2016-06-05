require 'rspec'
require_relative '../model/validador_de_argumentos'

describe 'ValidadorDeArgumentos' do

  it 'que devuelva true cuando es_valido? pretty' do

    validador = ValidadorDeArgumentos.new
    argumentos = ['--format=pretty']
    expect(validador.es_valido? argumentos).to eq true

  end

  it 'que devuelva true cuando es_valido? quiet' do

    validador = ValidadorDeArgumentos.new
    argumentos = ['--format=quiet']
    expect(validador.es_valido? argumentos).to eq true

  end


end