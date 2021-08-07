class BookingsController < ApplicationController
  # before_action :find_gym, only: [:new, :create, :index]

  def index
    @bookings = Booking.all
  end
  
  def new
  # @gym = Gym.find(params[:id])
  @booking = Booking.new 
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    find_gym
    @booking.gym = @gym
    if @booking.save
      redirect_to profile_path
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

  def show
    @bookings = Booking.find(params[:id])
  end

  private

  def find_gym
    @gym = Gym.find(params[:gym_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end, :user_id, :gym_id)
  end
end
