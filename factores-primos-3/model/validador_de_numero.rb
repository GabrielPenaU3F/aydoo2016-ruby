require_relative '../model/numero_no_permitido_exception'


class ValidadorDeNumero

  def es_valido? numero

    if numero >= 0 && numero.is_a?(Integer)

      return true

    else

      raise NumeroNoPermitidoException, "Debe ingresar un numero entero positivo"

    end

  end

end