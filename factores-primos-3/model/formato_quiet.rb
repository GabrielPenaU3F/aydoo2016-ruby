class FormatoQuiet

  def formatear factores

    string_salida = ""
    factores.each do |factor|

      string_salida.concat ("/n#{factor}")

    end

    string_salida.concat "/n"
    return string_salida

  end


end