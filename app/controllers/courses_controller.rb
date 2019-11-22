class CoursesController < ApplicationController

    before_action :set_course, only: [:show]

    def index
   
         @learner = Learner.find_by(id: params[learner_id])
         if @learner
           @courses = @learner.courses.all
         else
           @courses = Course.all
         end
       end
  
    def show
    end
  
    def new
      @course = Course.new
    end
  
    def create
       @course = current_learner.created_courses.build(course_params)
   
       if @course.save
        redirect_to course_path(@course)
       else
        render :new
       end
    end
  
     private
  
     def course_params
      params.require(:course).permit(:completed, :url, :category, :description, :rating, :title, :comments)
     end
  
     def set_course
        @course = Course.find_by(id: params[:id])
        redirect_to courses_path if !@course
     end
  
  end