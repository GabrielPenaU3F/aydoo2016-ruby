require 'rspec'
require_relative '../model/diccionario_de_opciones'


  describe 'DiccionarioDeOpciones' do

    it 'devuelva un ordenador ascendente si le doy --sort:asc' do

      diccionario = DiccionarioDeOpciones.new
      expect(diccionario.obtener_opcion '--sort:asc').to be_a OrdenAscendente

    end

    it 'devuelva un ordenador descendente si le doy --sort:des' do

      diccionario = DiccionarioDeOpciones.new
      expect(diccionario.obtener_opcion '--sort:des').to be_a OrdenDescendente

    end

end