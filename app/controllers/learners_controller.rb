class LearnersController < ApplicationController
    def new
        @learner = Learner.new
    end

    def create
        @learner = Learner.new(learner_params)
        if @learner.save
            session[:learner_id] = @learner.id
            redirect_to learner_path(@learner)
        else
            render :new
        end
    end

    def show
            @learner = Learner.find_by(id: params[:id])
    end


    private
    
    def learner_params
        params.require(:learner).permit(:username, :email, :password)
    end
end


