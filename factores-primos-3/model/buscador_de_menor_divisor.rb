class BuscadorDeMenorDivisor

  def buscar_menor_divisor num

    for i in 2..num

      if num % i == 0

        return i

      end

    end

  end

end