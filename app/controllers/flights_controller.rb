class FlightsController < ApplicationController

    def index
        @flights = Flight.all
    end

    def show
        @flight = Flight.find(params[:flight_id])
        cookies[:flight_id] = params[:flight_id]
    end

    def cancel
        @flight = Flight.find(params[:flight_id])
        @flight.update_attribute(:status, "CANCELED")
        message = "Flight ##{@flight.id} from #{@flight.depart} to #{@flight.arrive} has been canceled. We're sorry for the inconvenience. Thanks for choosing JetGreen!"

        twilio(ENV['test_number'], message)

        redirect_to flight_path


        # With paid twilio account the following method can be implemented instead of the above

        # @flight.passengers.each do |p|
        #     twilio(p.phone, 
        #     "Flight ##{@flight.id} from #{@flight.depart} to #{@flight.arrive} has been canceled. We're sorry for the inconvenience. Thanks for choosing JetGreen!")
        # end
    end
end
