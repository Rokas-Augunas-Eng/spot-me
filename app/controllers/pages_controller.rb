class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @gyms = Gym.all
    @first_8 = @gyms.first(8)

  end
end
