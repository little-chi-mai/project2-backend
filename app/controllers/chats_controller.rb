class ChatsController < ApplicationController

  def index
    @chats = Chat.all
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.create chat_params
    redirect_to root_path
  end

  # def content
  #   render :plain => @chats.content
  # end

  def show
    @user_id = :user_id
    @event_id = :event_id
    @content = :content

    render :json => {
      :user_id => user_id,
      :event_id => event_id,
      :content => content
    }
  end

  private
  def chat_params
    params.require(:chat).permit(:content)
  end
end
