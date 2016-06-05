require_relative '../model/formato_pretty'
require_relative '../model/formato_quiet'

class ValidadorDeArgumentos


  def initialize

    @opciones = Hash.new
    @opciones["--format=pretty"] = FormatoPretty.class
    @opciones["--format=quiet"] = FormatoQuiet.class

  end

  def es_valido? argumentos

    argumentos.each do |argumento|

      if !@opciones.has_key?(argumento)

        return false

      end

    end

    return true

  end

end