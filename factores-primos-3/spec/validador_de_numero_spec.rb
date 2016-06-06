require 'rspec'
require_relative '../model/validador_de_numero'


describe 'ValidadorDeNumero' do

  it 'devuelve true si el numero es positivo' do

    validador = ValidadorDeNumero.new
    expect(validador.es_valido? 5).to eq true

  end

  it 'lanza excepcion si el numero es negativo' do

    validador = ValidadorDeNumero.new
    expect{validador.es_valido? -5}.to raise_exception(NumeroNoPermitidoException)

  end

  it 'lanza excepcion si el numero es decimal' do

    validador = ValidadorDeNumero.new
    expect{validador.es_valido? 2.9}.to raise_exception(NumeroNoPermitidoException)

  end

end