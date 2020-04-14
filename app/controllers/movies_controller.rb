class MoviesController < ApplicationController

    def index
        @flight = Flight.find(params[:flight_id])
        @movies = @flight.sorted_movies
    end
end
