class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @gyms = Gym.all
    @first_4 = @gyms.first(4)

  end
end
