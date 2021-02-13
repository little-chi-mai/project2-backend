class ChatsController < ApplicationController

  def content
    render :plain => index
  end

  def info
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
