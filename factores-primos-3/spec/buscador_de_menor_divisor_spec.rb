  require 'rspec'
  require_relative '../model/buscador_de_menor_divisor'

  describe 'BuscadorDeMenorDivisor' do

    it 'que devuelva 2 cuando buscar_menor_divisor 2' do

      buscador = BuscadorDeMenorDivisor.new
      expect(buscador.buscar_menor_divisor 2).to eq 2

    end

    it 'que devuelva 3 cuando buscar_menor_divisor 9' do

      buscador = BuscadorDeMenorDivisor.new
      expect(buscador.buscar_menor_divisor 9).to eq 3

    end

    it 'que devuelva 2 cuando buscar_menor_divisor 10' do

      buscador = BuscadorDeMenorDivisor.new
      expect(buscador.buscar_menor_divisor 10).to eq 2

    end

  end
