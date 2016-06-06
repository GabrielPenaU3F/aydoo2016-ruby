require 'rspec'
require_relative '../model/ordenador_de_argumentos'

describe 'OrdenadorDeArgumentos' do

  it 'que detecte si hay formato especificado' do

    ordenador = OrdenadorDeArgumentos.new
    argumentos = ['hadg', 'sdgh', '--format=pretty']
    expect(ordenador.hay_formato_especificado? argumentos).to eq true

  end

  it 'que detecte si no hay formato especificado' do

    ordenador = OrdenadorDeArgumentos.new
    argumentos = ['hadg', 'sdgh', 'jfjy']
    expect(ordenador.hay_formato_especificado? argumentos).to eq false

  end



end

