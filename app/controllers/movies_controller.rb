class MoviesController < ApplicationController
    def index
        byebug
        @movies = Movie.where
    end
end
