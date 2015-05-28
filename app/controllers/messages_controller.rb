class MessagesController < ApplicationController
  def index
    @messages = Message.order('id DESC').limit(50)
  end

  def create
    @message = Message.create(permitted_params)
    redirect_to action: :index
  end

  def dump_env
    render text: env
  end

  private

  def permitted_params
    params.require(:message).permit(:text)
  end
end
