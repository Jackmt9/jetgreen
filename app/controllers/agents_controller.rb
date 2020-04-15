class AgentsController < ApplicationController
    skip_before_action :if_not_logged_in
    
    def login_form
        @error = flash[:error]
    end

    def login 
        @agent = Agent.find_by(username: params[:username]) 
        if @agent && @agent.authenticate(params[:password])
            session[:agent_id] = @agent.id
            # @flight = Flight.find(cookies[:flight_id])
            redirect_to flights_path
        else 
            flash[:error] = "Invalid username or password"
            redirect_to login_form_path
        end
    end

    def logout
        session[:agent_id] = nil
        redirect_to login_form_path
    end


end
