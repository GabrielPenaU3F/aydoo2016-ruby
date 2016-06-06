require_relative '../model/ordenador_de_argumentos'
require_relative '../model/factorizador'
require_relative '../model/diccionario_de_opciones'





class SelectorDeOpciones

  require_relative '../model/selector_de_opciones'

  def organizar_programa (parametros)

    parametros = parametros.downcase

    numero = parametros[0]
    argumentos = parametros[1..parametros.size-2]

    ordenador = OrdenadorDeArgumentos.new
    ordenador.ordenar argumentos

    factorizador = Factorizador.new
    factores_primos = factorizador.factorizar numero

    opciones = parsear_opciones(argumentos)

    ejecutar opciones, factores_primos

  end


  def parsear_opciones (argumentos)

    diccionario DiccionarioDeOpciones.new
    opciones = []

    argumentos.each do |arg|

      opciones.push (diccionario.obtener_opcion(arg))

    end

    return opciones

  end


  def ejecutar (opciones, factores)

    opciones.each do |opcion|

      opcion.ejecutar(factores)

    end

  end



end