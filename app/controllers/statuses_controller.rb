class StatusesController < ApplicationController
  
  def show
    @status = Status.find(params[:id])
  end

  def index
    if params[:course_id] && @course = Course.find_by_id(params[:course_id])
      @statuses = @course.statuses
      # @statuses = current_learner.statuses.by_course(params[:course_id])
        #load up only the statuses nested under that course
    elsif params[:language_id] && @language = Language.find_by_id(params[:language_id])
      @statuses = @language.statuses
    else
      #remain where it is
      @statuses = Status.all
    end
  end

  def new
    if params[:course_id] && @course = Course.find_by_id(params[:course_id])
      @status = @course.statuses.build #has_many
    else
      @status = Status.new
      @status.build_course  #belongs_to - nested form
    end
  end

  def create
     if params[:course_id] && @course = Course.find_by_id(params[:course_id])
      @status = @course.statuses.build(status_params)
     else
      @status = Status.new(status_params)
    end

     if @status.save
      redirect_to status_path(@status)
     else
      render :new
     end
  end

  private

  def status_params
    params.require(:status).permit(:title, :category, :date, :comments, :completed, :language_id, :course_id, course_attributes:[:title, :description, :rating, :comments, :date_completed, :learner_id])
  end
end
