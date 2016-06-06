require_relative '../model/formato_pretty'
require_relative '../model/formato_quiet'
require_relative '../model/orden_ascendente'
require_relative '../model/orden_descendente'
require_relative '../model/opcion_invalida_exception'

class ValidadorDeArgumentos


  def initialize

    @opciones = Hash.new
    @opciones["--format=pretty"] = FormatoPretty.class
    @opciones["--format=quiet"] = FormatoQuiet.class
    @opciones["--sort:asc"] = OrdenAscendente.class
    @opciones["--sort:des"] = OrdenDescendente.class



  end

  def es_valido? argumentos

    return verificar_que_no_haya_parametros_no_permitidos(argumentos)

  end




  def verificar_que_no_haya_parametros_no_permitidos(argumentos)

    argumentos.each do |argumento|

      if (argumento.start_with?("--output-file="))

        return true

      end

      if !@opciones.has_key?(argumento)

        raise OpcionInvalidaException, "Se ingreso una opcion invalida"

      end

    end

    return true

  end


end