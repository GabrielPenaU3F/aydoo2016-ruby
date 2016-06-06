require 'rspec'
require_relative '../model/formato_quiet'

describe 'FormatoQuiet' do

  it 'devuelve los factores formateados en quiet' do

    formateador = FormatoQuiet.new
    expect(formateador.formatear [2, 5, 1, 3, 6]).to eq "2\n5\n1\n3\n6\n"

  end

end