class FormatoQuiet

  def formatear factores

    string_salida = ""
    factores.each do |factor|

      string_salida.concat ("#{factor}/n")

    end

    return string_salida

  end


end