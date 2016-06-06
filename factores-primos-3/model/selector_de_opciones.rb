require_relative '../model/ordenador_de_argumentos'
require_relative '../model/factorizador'
require_relative '../model/diccionario_de_opciones'
require_relative '../model/diccionario_de_formatos'
require_relative '../model/generador_de_salida'




class SelectorDeOpciones

  require_relative '../model/selector_de_opciones'

  def organizar_programa (parametros)

    parametros.each do |parametro|

      parametro.upcase

    end

    numero = Integer(parametros[0])
    formato = parametros
    argumentos = parametros[1..parametros.size-1]
    factorizador = Factorizador.new
    factores_primos = factorizador.factorizar numero

    ordenador = OrdenadorDeArgumentos.new
    ordenador.ordenar argumentos
    formato = argumentos[0]
    salida = argumentos[argumentos.size-1]

    if argumentos.size > 2

      argumentos = argumentos[1..argumentos.size-1]
      opciones = parsear_opciones(argumentos)
      ejecutar opciones, factores_primos

    end

    string_de_salida = realizar_formateo(formato, factores_primos)

    gen_salida = GeneradorDeSalida.new
    gen_salida.generar_salida(salida, string_de_salida)

  end


  def parsear_opciones (argumentos)

    diccionario = DiccionarioDeOpciones.new
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


  def realizar_formateo (formato, factores)

    diccionario_formatos = DiccionarioDeFormatos.new
    obj_formato = diccionario_formatos.obtener_formato(formato)
    string_salida = obj_formato.formatear(factores)
    return string_salida

  end


end