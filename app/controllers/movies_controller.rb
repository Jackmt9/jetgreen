class MoviesController < ApplicationController

    def index
        @flight = Flight.find(params[:flight_id])
        @movies = @flight.sort_movies
    end
end
