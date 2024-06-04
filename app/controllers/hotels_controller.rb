class HotelsController < ApplicationController

  def index
    @hotels = Hotel.all
    @hotels = @hotels.where("lower(location) = ?", params[:location].downcase) if params[:location].present?
    render json: @hotels
  end

  def show
    @hotel = Hotel.find(params[:id])
    render json: @hotel
  end
end
