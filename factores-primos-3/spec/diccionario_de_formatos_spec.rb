require 'rspec'
require_relative '../model/diccionario_de_formatos'

describe 'DiccionarioDeFormatos' do

  it 'devuelva un pretty si le doy --format=pretty' do

    diccionario = DiccionarioDeFormatos.new
    expect(diccionario.obtener_formato '--format=pretty').to be_a FormatoPretty

  end

  it 'devuelva un quiet si le doy --format=quiet' do

    diccionario = DiccionarioDeFormatos.new
    expect(diccionario.obtener_formato '--format=quiet').to be_a FormatoQuiet

  end

end

