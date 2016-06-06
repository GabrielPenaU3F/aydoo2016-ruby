class GeneradorDeSalida

  def generar_salida (salida, string_salida)

    if salida=='--output-file=-'

      puts(string_salida)

    else

      File.open(salida[14..-1], 'w') do |archivo|

        archivo.write("#{string_salida}")

      end

    end

  end


end