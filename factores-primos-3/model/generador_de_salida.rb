class GeneradorDeSalida

  def generar_salida (salida, string_salida)

    if salida=='--output-file=-'

      puts(string_salida)

    else

      File.open(salida, "w") do |archivo|

        string_salida = string_salida.sub(14)
        archivo.write("#{string_salida}")

      end

    end

  end


end