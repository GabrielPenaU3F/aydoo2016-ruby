require_relative '../model/orden_ascendente'
require_relative '../model/orden_descendente'


class DiccionarioDeOpciones


  def initialize

    @opciones = Hash.new
    @opciones["--sort:asc"] = OrdenAscendente
    @opciones["--sort:des"] = OrdenDescendente

  end

  def obtener_opcion string_opcion

    clase_opcion = @opciones[string_opcion]
    objeto_opcion = clase_opcion.new
    return objeto_opcion

  end

end