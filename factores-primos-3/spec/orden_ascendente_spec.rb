require 'rspec'
require_relative '../model/orden_ascendente'

describe 'OrdenAscendente' do

  it 'devuelve los factores correctamente ordenados' do

    ordenador = OrdenAscendente.new
    expect(ordenador.ejecutar [2, 5, 1, 3, 6]).to eq [1,2,3,5,6]

  end

end