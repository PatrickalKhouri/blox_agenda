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
    if @meeting.save 
      redirect_to meetings_path
    else
      render :new
    end
  end

  def destroy
    @meeting.destroy
    redirect_to meetings_path
  end

  private

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:title, :date, :duration_minutes, :start_time, :room_id)
  end
end
