require_relative '../model/detector_de_opciones'
require_relative '../model/validador_de_argumentos'


class OrdenadorDeArgumentos

  def ordenar argumentos

    validador_args = ValidadorDeArgumentos.new
    validador_args.es_valido? argumentos

    colocar_formato_en_primera_posicion(argumentos)
    colocar_salida_en_ultima_posicion(argumentos)

  end



  def colocar_salida_en_ultima_posicion(argumentos)

    detector = DetectorDeOpciones.new

    if !detector.hay_salida_especificada? argumentos

      argumentos.push '--output-file=-'

    else

      for i in 0...argumentos.size

        if argumentos[i].start_with?('--output-file=')

          salida = argumentos[i]
          for j in i...argumentos.size-1

            argumentos[j] = argumentos[j+1]

          end

          argumentos[argumentos.size-1] = salida

        end

      end

    end

  end



  def colocar_formato_en_primera_posicion(argumentos)

    detector = DetectorDeOpciones.new

    if !detector.hay_formato_especificado? argumentos

      argumentos.push(argumentos[0])
      argumentos[0] = "--format=pretty" #Coloco pretty por default si no esta

    else

      for i in 0...argumentos.size

        if argumentos[i].start_with?('--format=')

          temp = argumentos[0]
          argumentos[0] = argumentos[i]
          argumentos[i] = temp

        end

      end

    end

  end



end