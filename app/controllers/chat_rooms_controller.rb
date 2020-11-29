class ChatRoomsController < ApplicationController

  def new
    @chat_room = ChatRoom.new
  end

  def create
    @chat_room = ChatRoom.new(chat_room_params)
    if @chat_room.save
      redirect_to root_path
    else
      render :new
    end
  end
    
  private

  def chat_room_params
    params.require(:chat_room).permit(:name, user_ids: [])
end
