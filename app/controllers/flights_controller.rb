class FlightsController < ApplicationController
    def index
        @flights = Flight.all
    end

    def show
        @flight = Flight.find(params[:flight_id])
        session[:flight_id] = params[:flight_id]
    end

    def cancel
        @flight = Flight.find(params[:flight_id])
        @flight.update_attribute(:status, "Canceled")
        redirect_to flight_path
    end

end
