class ChatRoomsController < ApplicationController
  def new
    @chat_room = ChatRoom.new
  end
end
