class StatusesController < ApplicationController

    def index
    end

    
    def new
    end

    def create
        #locate user
        @learner = Learner.find_by(username: params[:learner][:username])

        #if something is found and passowrd correct, log learner in
        if @learner && @learner.authenticate(params[:learner][:password])
            session[:learner_id] = @learner.id
            redirect_to learner_path(@learner)
        else
            flash[:message] = "Invalid data.  Please try again."
            redirect_to login_path
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end
end
