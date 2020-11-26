class CalendarRoomsController < ApplicationController
  def new
    @calendar_room = CalendarRoom.new
  end
end
