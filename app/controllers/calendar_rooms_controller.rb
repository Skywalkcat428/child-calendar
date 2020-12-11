class CalendarRoomsController < ApplicationController

  def index
    @calendar_rooms = CalendarRoom.calendar("created_at DESC")
  end

  def new
    @calendar_room = CalendarRoom.new
  end

  def create
    binding.pry
    @calendar_room = CalendarRoom.new(calendar_room_params)
    if @calendar_room.save
      redirect_to root_path
    else
      return render :new
    end
  end

  private

  def calendar_room_params
    params.require(:calendar_room).permit(:child_name, :birth_date, :sex_id, :blood_type_id).merge(user_id: current_user.id)
  end
end