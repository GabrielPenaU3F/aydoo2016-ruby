require_relative '../model/selector_de_opciones'


class Main

  parametros = ARGV
  selector = SelectorDeOpciones.new
  selector.organizar_programa(parametros)

end