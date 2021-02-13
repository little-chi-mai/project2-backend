class ChatsController < ApplicationController

  def content
    render :plain => index
  end

<<<<<<< HEAD
  def info
=======
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
>>>>>>> 83800ecf6b9cfddca6099f0c8f2aeff1d2f53001
    @user_id = :user_id
    @event_id = :event_id
    content = :content

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
