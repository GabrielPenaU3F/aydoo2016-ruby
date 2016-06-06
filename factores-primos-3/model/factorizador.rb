require_relative '../model/buscador_de_menor_divisor'
require_relative '../model/identificador_de_primos'
require_relative '../model/validador_de_numero'

class Factorizador

  def factorizar num

    validador_numero = ValidadorDeNumero.new
    validador_numero.es_valido? num

    resultado = []

    return realizar_factoreo(num, resultado)

  end

  def realizar_factoreo(num, resultado)

    identificador_de_primos = IdentificadorDePrimos.new
    buscador_de_menor_divisor = BuscadorDeMenorDivisor.new

    if identificador_de_primos.es_primo? num

      resultado.push num
      return resultado

    else

      menor_divisor = buscador_de_menor_divisor.buscar_menor_divisor num
      resultado.push menor_divisor
      realizar_factoreo(num/menor_divisor, resultado)

    end

  end

end