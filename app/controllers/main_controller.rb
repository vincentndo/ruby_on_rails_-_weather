require_relative "../services/weather_service"

class MainController < ApplicationController

  def index
    cities = City.all
    @cities = cities.values
  end

end
