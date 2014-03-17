class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.deliver
      redirect_to root_url, notice: "Tu mensaje fue enviado, nos contactaremos contigo!"
    else
      render "home#index"
    end
  end

end
