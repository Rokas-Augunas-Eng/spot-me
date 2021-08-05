class GymsController < ApplicationController
  before_action :set_gym, only: [:show, :edit, :update, :destroy]

  def index
    @gyms = Gym.all

     @markers = @gyms.geocoded.map do |gym|
      {
        lat: gym.latitude,
        lng: gym.longitude
      }
    end 

    if params.key?(:search_by_location)
      @gyms = Gym.where("location = ?", params[:search_by_location])
    else
      @gyms = Gym.all
    end
  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.new(gym_params)
    if @gym.save
      redirect_to gym_path(@gym)
    else
      render :new
    end
  end

  def show
    @gym = Gym.find(params[:id])
    @booking = Booking.new 
  end

  def edit
  end

  def update
    @gym.update(gym_params)
    redirect_to gym_path(@gym)
  end

  def destroy
    @gym.destroy
    redirect_to gyms_path
  end

  private

  def set_gym
    @gym = Gym.find(params[:id])
  end

  def gym_params
      params.require(:gym).permit(:name)

      # (:equipment, :location, :availability, :type_of_gym, :cost, :user_id, :name )
  end
end
