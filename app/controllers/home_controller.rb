class HomeController < ApplicationController
  def index
    @last_tip  = Tip.order('created_at').last
    @productos = Producto.order('created_at').last
    @tips      = Tip.order('created_at').limit(4)
  end
end
