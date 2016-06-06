require 'rspec'
require_relative '../model/orden_descendente'

describe 'OrdenAscendente' do

  it 'devuelve los factores correctamente ordenados' do

    ordenador = OrdenDescendente.new
    expect(ordenador.ejecutar [2, 5, 1, 3, 6]).to eq [6,5,3,2,1]

  end

end