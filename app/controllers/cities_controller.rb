class CitiesController < ApplicationController

    def view
        cities = City.all
        if params[:city]
            city_key = params[:city].capitalize.to_sym
            @city = cities[city_key]
        else
            @cities = cities.values
        end
    end

    def new
    end

    def create
        params[:city] = params[:city].capitalize
        city = City.new(params)
        city.save
        redirect_to "/cities/view"
    end

    def old
        city_key = params[:city].to_sym
        cities = City.all
        @city = cities[city_key]
    end

    def update
        city_key = params[:city].to_sym
        cities = City.all
        city = cities[city_key]
        city.population = params[:population] != "" ? params[:population] : city.population
        city.landmark = params[:landmark] != "" ? params[:landmark] : city.landmark
        redirect_to "/cities/view"
    end

end