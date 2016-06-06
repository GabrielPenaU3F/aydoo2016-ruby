class ValidadorDeNumero

  def es_valido? numero

    if numero >= 0 && numero.is_a?(Integer)

      return true

    else

      return false

    end

  end

end