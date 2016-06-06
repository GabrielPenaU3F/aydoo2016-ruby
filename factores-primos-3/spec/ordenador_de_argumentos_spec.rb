require 'rspec'
require_relative '../model/ordenador_de_argumentos'


describe 'OrdenadorDeArgumentos' do

  it 'que ponga el formato en la primera posicion, estando especificado el formato' do

    ordenador = OrdenadorDeArgumentos.new
    argumentos = ['alguna_cosa', 'alguna_otra', '--format=pretty']
    ordenador.colocar_formato_en_primera_posicion argumentos
    expect(argumentos).to eq ['--format=pretty', 'alguna_otra', 'alguna_cosa']

  end

  it 'que ponga el pretty en la primera posicion, cuando no hay formato' do

    ordenador = OrdenadorDeArgumentos.new
    argumentos = ['alguna_cosa', 'alguna_otra']
    ordenador.colocar_formato_en_primera_posicion argumentos
    expect(argumentos).to eq ['--format=pretty', 'alguna_otra', 'alguna_cosa']

  end

  it 'que ponga el output en la ultima posicion, cuando esta especificado' do

    ordenador = OrdenadorDeArgumentos.new
    argumentos = ['alguna_cosa', '--output-file=algo', 'alguna_otra']
    ordenador.colocar_salida_en_ultima_posicion argumentos
    expect(argumentos).to eq ['alguna_cosa', 'alguna_otra', '--output-file=algo']

  end


end