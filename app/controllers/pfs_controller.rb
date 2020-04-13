class PfsController < ApplicationController
    def destroy
        @pf = Pf.find(params[:pfs_id][:pf])
        @pf.destroy
        redirect_to manifest_path(params[:flight_id])
    end
end
