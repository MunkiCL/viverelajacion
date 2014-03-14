class TipsController < InheritedResources::Base
    def index
        @tips = Tip.all
    end

    def show
        @tip = Tip.find(params[:id])
    end
end
