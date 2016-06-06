require_relative '../model/ordenador_de_argumentos'
require_relative '../model/factorizador'
require_relative '../model/diccionario_de_opciones'





class SelectorDeOpciones

  require_relative '../model/selector_de_opciones'

  def organizar_programa (parametros)

    parametros = parametros.downcase

    numero = parametros[0]
    formato = parametros
    argumentos = parametros[1..parametros.size-1]

    ordenador = OrdenadorDeArgumentos.new
    ordenador.ordenar argumentos

    formato = argumentos[0]
    salida = argumentos[size-1]
    argumentos = argumentos[1..argumentos.size-1]

    factorizador = Factorizador.new
    factores_primos = factorizador.factorizar numero

    opciones = parsear_opciones(argumentos)

    ejecutar opciones, factores_primos

    string_de_salida = realizar_formateo (formato, factores_primos)

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

      factores = opcion.ejecutar(factores)

    end

  end


  def realizar_formato (formato, factores)



  end


end