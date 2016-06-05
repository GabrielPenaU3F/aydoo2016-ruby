class BuscadorDeMenorDivisorSpec
  require 'rspec'
  require_relative '../model/buscador_de_menor_divisor'

  describe 'BuscadorDeMenorDivisor' do

    it 'should return 2 when buscar_menor_divisor 2' do

      buscador = BuscadorDeMenorDivisor.new
      expect(buscador.buscar_menor_divisor 2).to eq 2

    end

    it 'should return 3 when buscar_menor_divisor 9' do

      buscador = BuscadorDeMenorDivisor.new
      expect(buscador.buscar_menor_divisor 9).to eq 3

    end

  end

end