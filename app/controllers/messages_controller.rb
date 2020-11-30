class MessagesController < ApplicationController
  
  def index
    @message = Message.new
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @messages = @chat_room.messages.includes(:user)
  end

  def create
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @message = @chat_room.messages.new(message_params)
    if @message.save
      redirect_to chat_room_messages_path(@chat_room)
    else
      @messages = @chat_room.messages.includes(:user)
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
