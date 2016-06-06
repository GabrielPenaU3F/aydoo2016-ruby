require 'rspec'
require_relative '../model/detector_de_opciones'

describe 'OrdenadorDeArgumentos' do

  it 'que detecte si hay formato especificado' do

    ordenador = DetectorDeOpciones.new
    argumentos = ['hadg', 'sdgh', '--format=pretty']
    expect(ordenador.hay_formato_especificado? argumentos).to eq true

  end

  it 'que detecte si no hay formato especificado' do

    ordenador = DetectorDeOpciones.new
    argumentos = ['hadg', 'sdgh', 'jfjy']
    expect(ordenador.hay_formato_especificado? argumentos).to eq false

  end

  it 'que detecte si no hay formato especificado' do

    ordenador = DetectorDeOpciones.new
    argumentos = ['hadg', 'sdgh', 'jfjy']
    expect(ordenador.hay_formato_especificado? argumentos).to eq false

  end



end

