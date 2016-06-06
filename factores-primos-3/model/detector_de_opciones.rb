class DetectorDeOpciones

  def hay_formato_especificado? argumentos

    argumentos.each do |argumento|

      if argumento.start_with? '--format='

        return true

      end

    end

    return false

  end




end