class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:destroy]

  def index
    @meetings = Meeting.all
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user = current_user
    @meeting.duration_minutes = @meeting.duration_minutes * 60
    end_time = @meeting.start_time + @meeting.duration_minutes
    @meetings_on_same_day_and_room = Meeting.where(date: @meeting.date, room: @meeting.room )
    create_meeting(@meeting) if @meetings_on_same_day_and_room.count == 0
    #1 = Começa em uma reunião ja acontecendo
    #2 = Começa antes, mas invade o horario de uma ja acontecendo

      

  end

  def destroy
    @meeting.destroy
    redirect_to meetings_path
  end

  private

  def create_meeting(meeting)
    if meeting.save 
      redirect_to meetings_path
    else
      render :new
    end
  end 

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:title, :date, :duration_minutes, :start_time, :room_id)
  end
end
