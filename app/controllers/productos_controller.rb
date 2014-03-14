class ProductosController < InheritedResources::Base
    def create
        @producto = Producto.create(user_params)
    end

    def index
        @productos = Producto.all
    end

    def show
    end
    private
    def user_params
        params.require(:producto).permit(:imagen)
    end
end
