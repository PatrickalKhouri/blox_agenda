class RoomsController < ApplicationController
  before_action :set_room, only: [:destroy]

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
    @floors = ["2", "3", "4"]
  end

  def create
    @room = Room.new(room_params)
    if @room.save 
      redirect_to rooms_path
    else
      render :new
    end
  end

  def destroy
    @room.destroy
    redirect_to rooms_path
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:capacity, :name, :floor)
end
end
