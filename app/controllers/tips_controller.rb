require "html_truncator"
class TipsController < InheritedResources::Base
    def index
        @tips = Tip.by_creation.limit(20)
    end

    def show
        @tip = Tip.find(params[:id])
        @image = "http://#{request.host}:#{request.port}#{@tip.portada.url(:large)}"
    end


end
