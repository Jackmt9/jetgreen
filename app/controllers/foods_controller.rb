class FoodsController < ApplicationController

    def index
        @flight = Flight.find(params[:flight_id])
        @foods = @flight.foods
        @meal = @foods.first.meal_type.meal
    end
end
