require_relative '../model/formato_pretty'

class ValidadorDeArgumentos


  def initialize

    @opciones = Hash.new
    @opciones["--format=pretty"] = FormatoPretty.class

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