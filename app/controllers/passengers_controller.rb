class PassengersController < ApplicationController

    def manifest
        @flight = Flight.find(params[:flight_id])
        @passengers = @flight.sorted_passengers
        render 'manifest'
    end

    def show
        @passenger = Passenger.find(params[:pass_id])
    end

    def edit
        @passenger = Passenger.find(params[:pass_id])
        @errors = flash[:errors]
    end

    def update
        @passenger = Passenger.find(params[:pass_id])
        if @passenger.update(pass_params)
            redirect_to passenger_path
        else
            flash[:errors] = @passenger.errors.full_messages
            redirect_to edit_passenger_path
        end
    end

    def remove
        @flight = Flight.find(params[:flight_id])
        @pfs = @flight.sorted_pfs
        @error = flash[:errors]
    end

    private

    def pass_params
        params.require(:passenger).permit(:first_name, :last_name, :dob, :gender, :phone, :middle_name, :suffix)
    end
end
