class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.status = :confirmed
    if @booking.save
      render json: @booking, status: :created
    else
      render json: {messages: @booking.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    if params[:user_id].present?
      @bookings = Booking.where(user_id: params[:user_id])
      if @bookings.any?
        render json: { bookings: @bookings }, status: :ok
      else
        render json: { message: "No bookings found for the given user" }, status: :ok
      end
    else
      render json: { error: "User ID is required" }, status: :bad_request
    end
  end

  def show
    @booking = Booking.find(params[:id])
    render json: @booking
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    head :no_content
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :room_id, :check_in, :check_out)
  end
end
