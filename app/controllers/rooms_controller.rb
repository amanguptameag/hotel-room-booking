class RoomsController < ApplicationController
    
	def index
		@hotel = Hotel.find(params[:hotel_id])
		@rooms = @hotel.rooms
		render json: @rooms
	end

	def show
		@room = Room.find(params[:id])
		render json: @room
	end
end
