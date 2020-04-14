class PfsController < ApplicationController

    def destroy
        if params[:pfs_id][:pf] != ""
            @pf = Pf.find(params[:pfs_id][:pf])
            @pf.destroy
            redirect_to manifest_path(params[:flight_id])
        else
            flash[:errors] = "Must Select A Passenger"
            redirect_to remove_passenger_path
        end
    end
end
