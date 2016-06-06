class FormatoPretty


  def formatear factores

    numero = obtener_numero(factores)
    string_salida = "#{numero}:"
    factores.each do |factor|

      string_salida.concat (" #{factor}")

    end
    return string_salida

  end


  def obtener_numero factores

    numero = 1
    for i in 0..factores.size-1

      numero = numero*factores[i]

    end

    return numero

  end

end