class CalendarController < ApplicationController
  
  def index
    @calendar = Calendar.new
    # @calendar_room = CalendarRoom.find(params[:calendar_room_id])
    # @calendars = @calendar_room.calendars.includes(:user)
  end

  def create
    @calendar_room = CalendarRoom.find(params[:calendar_room_id])
    @calendar = @calendar_room.calendar.new(calendar_params)
    if @calendar.save
      redirect_to root_path
    else
      # @calendars = @calendar_room.calendars.includes(:user)
      render :index
    end
  end

  private

  def calendar_params
    params.require(:calendar).permit(:detail).merge(user_id: current_user.id)
  end
end
