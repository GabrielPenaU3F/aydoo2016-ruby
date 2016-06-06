require_relative '../model/formato_pretty'
require_relative '../model/formato_quiet'


class DiccionarioDeFormatos


  def initialize

    @formatos = Hash.new
    @formatos["--format=pretty"] = FormatoPretty
    @formatos["--format=quiet"] = FormatoQuiet

  end

  def obtener_formato string_formato

    clase_formato = @formatos[string_formato]
    objeto_formato = clase_formato.new
    return objeto_formato

  end

end