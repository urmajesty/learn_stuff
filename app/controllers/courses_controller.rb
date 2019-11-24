class CoursesController < ApplicationController

    before_action :set_course, only: [:show]

    def index
      @courses = Course.all
    end

    def show
    end
  
    def new
      @course = Course.new
    end
  
    def create
       @course = current_learner.created_courses.build(course_params)
   
       if @course.save!
        redirect_to course_path(@course)
       else
        render :new
         session.delete(:current_learner_id)
         flash[:notice] = "You have successfully logged out."
         redirect_to root_url
       end
     end

   def edit
      @course = Course.find_by(id: params[:id])
   end

   def update
      @course = Course.find_by(id: params[:id])
      if @course.update(course_params)
            redirect_to course_path(@course)
        else
            render :edit
        end
    end

      def destroy
    @course = Course.find(params[:id])
    if current_learner 
      @course.destroy
      redirect_to course_path(current_learner), info: "Course has been deleted."
    else 
      redirect_to course_path(@course), warning: "You can only delete courses that you've created."
    end
  end

  def set_course
   @course = Course.find_by(id: params[:id])
   redirect_to courses_path if !@course
end

     private
  
     def course_params
      params.require(:course).permit(:completed, :language, :url, :category, :rating, :title, :comments)
     end
  
     def set_course
        @course = Course.find_by(id: params[:id])
        redirect_to courses_path if !@course
     end
  
  end