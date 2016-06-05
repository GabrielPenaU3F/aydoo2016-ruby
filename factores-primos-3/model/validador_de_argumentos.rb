require_relative '../model/formato_pretty'
require_relative '../model/formato_quiet'
require_relative '../model/orden_ascendente'
require_relative '../model/orden_descendente'

class ValidadorDeArgumentos


  def initialize

    @opciones = Hash.new
    @opciones["--format=pretty"] = FormatoPretty.class
    @opciones["--format=quiet"] = FormatoQuiet.class
    @opciones["--sort:asc"] = OrdenAscendente.class
    @opciones["--sort:des"] = OrdenDescendente.class



  end

  def es_valido? argumentos

    argumentos.each do |argumento|

      if (argumento.start_with?("--output-file="))

        return true

      end

      if !@opciones.has_key?(argumento)

        return false

      end

    end

    return true

  end

end