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
    @meetings_on_same_day_and_room = Meeting.where(date: @meeting.date, room: @meeting.room )
    end_time = final_time(@meeting)
    if check_business_hours(@meeting)
      render :new 
    else
      start_end_array = start_and_end_times(@meetings_on_same_day_and_room)
      overlap_check = 0
      start_end_array.each do |time_range|
        if @meeting.start_time.strftime("%k:%M") <= time_range[1].strftime("%k:%M") && time_range[0].strftime("%k:%M") <= end_time.strftime("%k:%M")
          overlap_check += 1
        end
      end
      if overlap_check >= 1
        render :new
      else
        if @meeting.save 
          redirect_to meetings_path
        else
        render :new
        end
      end
    end
  end

  def destroy
    @meeting.destroy
    redirect_to meetings_path
  end

  private

  def duration_seconds(minutes)
    seconds = minutes * 60
    seconds
  end

 def final_time(meeting)
  end_time = meeting.start_time + duration_seconds(meeting.duration_minutes)
 end

  def start_and_end_times(object_array)
    object_array.map do |object|
      end_time = object.start_time + duration_seconds(object.duration_minutes)
      [object.start_time, end_time]
    end
  end

  def check_business_hours(meeting)
    end_time = final_time(meeting)
    if meeting.start_time.hour < 8 || end_time.hour >= 18
      true
    end
  end 

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
