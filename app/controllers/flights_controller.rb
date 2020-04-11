class FlightsController < ApplicationController
    def index
        @flights = Flight.all
    end

    def show
        @flight = Flight.find(params[:id])
        session[:flight_id] = params[:id]
    end

end
