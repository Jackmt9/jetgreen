class FoodsController < ApplicationController

    def index
        @flight = Flight.find(params[:flight_id])
        @foods = @flight.foods
    end
    
end
