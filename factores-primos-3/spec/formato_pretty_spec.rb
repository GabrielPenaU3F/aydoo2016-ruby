require 'rspec'
require_relative '../model/formato_pretty'

describe 'FormatoPretty' do

  it 'devuelve los factores formateados en pretty' do

    formateador = FormatoPretty.new
    expect(formateador.formatear [2, 5, 1, 3, 6]).to eq '180: 2 5 1 3 6'

  end

end