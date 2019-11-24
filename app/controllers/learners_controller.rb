class LearnersController < ApplicationController
    skip_before_action :redirect_if_not_logged_in, only: [:new, :create]

  def new
    @learner = Learner.new
  end

  def create
    @learner = Learner.new(learner_params)
    if @learner.valid?
      @learner.save
      #send a welcome email
      session[:learner_id] = @learner.id
      redirect_to learner_path(@learner)
    else
      render :new
    end
  end

  def show
    @learner = Learner.find_by(id: params[:id])
  end

  def index
    @learners = Learner.all
  end

  def message
    @receiver = Learner.find_by(id: params[:id])
    @sender = current_learner
    @message = params[:content]

    #send an email
    NotificationMailer.training_invite(@receiver, @sender, @message).deliver_now

    redirect_to learners_path
  end

  private

  def destroy
    session.clear
    redirect_to root_path
  end

  def learner_params
    params.require(:learner).permit(:username, :language, :email, :password)
  end
end


