class HomeController < ApplicationController
  def index
    @last_tip  = Tip.by_creation.first
    @productos = Producto.by_creation.last
    @tips      = Tip.by_creation.limit(4)
    @promociones = Producto.promociones.limit(4)
    @message   = Message.new
  end
end
