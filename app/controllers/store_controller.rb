class StoreController < ApplicationController
  def index
    @productos_kinesiologia = Producto.by_type('kinesiologia')
    @productos_masaje = Producto.by_type('masaje')
    @productos_actividad = Producto.by_type('actividad')
  end
end
