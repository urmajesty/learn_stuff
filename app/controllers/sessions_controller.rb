class SessionsController < ApplicationController
    skip_before_action :redirect_if_not_logged_in


    def index
    end

    
    def new
    end

    def create
        #locate learner
        @learner = Learner.find_by(username: params[:learner][:username])

        #if learner and password correct, log learner in
        if @learner && @learner.authenticate(params[:learner][:password])
            session[:learner_id] = @learner.id
            redirect_to learner_path(@learner)
        else
            flash[:message] = "Invalid input.  Please try again."
            redirect_to login_path
        end
    end

    def omniauth
        @learner = Learner.from_omniauth(auth)
        @learner.save
        session[:learner_id] = @learner.id
       redirect_to learner_path(@learner.id)
      end

    def destroy
        session.clear
        redirect_to root_path

    end
    private

    def auth
    request.env['omniauth.auth']
    end
end