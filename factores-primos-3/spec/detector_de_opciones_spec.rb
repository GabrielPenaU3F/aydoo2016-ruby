require 'rspec'
require_relative '../model/detector_de_opciones'

describe 'DetectorDeOpciones' do

  it 'que detecte si hay formato especificado' do

    detector = DetectorDeOpciones.new
    argumentos = ['hadg', 'sdgh', '--format=pretty']
    expect(detector.hay_formato_especificado? argumentos).to eq true

  end

  it 'que detecte si no hay formato especificado' do

    detector = DetectorDeOpciones.new
    argumentos = ['hadg', 'sdgh', 'jfjy']
    expect(detector.hay_formato_especificado? argumentos).to eq false

  end

  it 'que detecte si no hay salida especificada' do

    detector = DetectorDeOpciones.new
    argumentos = ['hadg', 'sdgh', 'jfjy']
    expect(detector.hay_salida_especificada? argumentos).to eq false

  end



end

