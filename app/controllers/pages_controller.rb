class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @gyms = Gym.all
    @first_three = @gyms.first(3)
  end
end
