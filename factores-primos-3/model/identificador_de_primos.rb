class IdentificadorDePrimos

  def es_primo? num

    if num == 1

      return true

    end

    cuenta = 2
    i = 2
    while i <= num-1

      if !(num%i==0)

        cuenta += 1

      end
      i += 1

    end

    if num==cuenta

      return true

    end

    return false

  end

end