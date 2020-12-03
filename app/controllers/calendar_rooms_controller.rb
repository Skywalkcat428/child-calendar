class CalendarRoomsController < ApplicationController

  def new
    @calendar_room = CalendarRoom.new
  end

  def create
    @calendar_room = CalendarRoom.new(calendar_room_params)
    if @calendar_room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def calendar_room_params
    params.require(:calendar_room).permit(:child_name, :birth_date, :sex, :blood_type, user_ids: [])
  end
end