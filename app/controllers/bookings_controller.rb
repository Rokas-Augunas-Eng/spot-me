class BookingsController < ApplicationController
  before_action :find_gym, only: [:new, :create, :index]

  def new
  @booking = Booking.new 
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.gym = @gym
    if @booking.save
    redirect_to gym_path(@gym)
    else
      render :new  
    end 
  end

  def destroy
    @booking = Booking.find(params[:id])
    @gym = @booking.gym
    @booking.destroy
    redirect_to gym_path(@gym)
  end

  private

  def find_gym
    @gym = Gym.find(params[:gym_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end)
  end
end
