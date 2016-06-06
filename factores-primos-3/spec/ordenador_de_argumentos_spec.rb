require 'rspec'
require_relative '../model/ordenador_de_argumentos'


describe 'OrdenadorDeArgumentos' do

  it 'que ponga el formato en la primera posicion, estando especificado el formato' do

    ordenador = OrdenadorDeArgumentos.new
    argumentos = ['alguna_cosa', 'alguna_otra', '--format=pretty']
    ordenador.ordenar argumentos
    expect(argumentos).to eq ['--format=pretty', 'alguna_otra', 'alguna_cosa']

  end

  it 'que ponga el pretty en la primera posicion, cuando no hay formato' do

    ordenador = OrdenadorDeArgumentos.new
    argumentos = ['alguna_cosa', 'alguna_otra']
    ordenador.ordenar argumentos
    expect(argumentos).to eq ['--format=pretty', 'alguna_otra', 'alguna_cosa']

  end


end