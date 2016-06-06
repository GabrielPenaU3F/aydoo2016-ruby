require_relative '../model/ordenador_de_argumentos'
require_relative '../model/factorizador'




class SelectorDeOpciones

  require_relative '../model/selector_de_opciones'

  def organizar_programa (parametros)

    numero = parametros[0]
    argumentos = parametros[1..parametros.size-1]

    ordenador = OrdenadorDeArgumentos.new
    ordenador.ordenar argumentos

    factorizador = Factorizador.new
    factores_primos = factorizador.factorizar numero

    parsear_opciones(argumentos)

  end


  def parsear_opciones (argumentos)



  end

end