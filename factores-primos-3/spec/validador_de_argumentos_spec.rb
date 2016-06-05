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

  it 'que devuelva true cuando es_valido? sort:asc' do

    validador = ValidadorDeArgumentos.new
    argumentos = ['--sort:asc']
    expect(validador.es_valido? argumentos).to eq true

  end

  it 'que devuelva true cuando es_valido? sort:des' do

    validador = ValidadorDeArgumentos.new
    argumentos = ['--sort:des']
    expect(validador.es_valido? argumentos).to eq true

  end

  it 'que devuelva true cuando es_valido? --output-file=algo' do

    validador = ValidadorDeArgumentos.new
    argumentos = ['--output-file=algo']
    expect(validador.es_valido? argumentos).to eq true

  end

  it 'que devuelva false cuando es_valido? alguna_cosa' do

    validador = ValidadorDeArgumentos.new
    argumentos = ['alguna_cosa']
    expect(validador.es_valido? argumentos).to eq false

  end


end