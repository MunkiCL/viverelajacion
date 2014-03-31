class TipsController < InheritedResources::Base
    def index
        @tips = Tip.all
    end

    def show
        @tip = Tip.find(params[:id])
        @image = "http://#{request.host}:#{request.port}#{@tip.portada.url(:large)}"
    end


end
