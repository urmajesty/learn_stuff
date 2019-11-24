class Status < ApplicationRecord
    belongs_to :course
    has_many :languages

    scope :by_course, -> (course_id) {where("course_id = ?", course_id)}

  validates :date, presence: true
  validates_associated :course


  #accepts_nested_attributes_for :course

  def course_attributes=(course_params)
    course = Course.find_or_create_by(course_params)
    course.valid? ? self.course = course : self.course_params
     #course_params[:title].empty? ? self.course : self.course = course
  end

  def datetime
    self.date.strftime("%A, %b %d") if self.date
    #self.date.try(:strftime, "%A, %b %d")
  end

  def username
    @username ||= self.language.try(:learner).try(:username)
  end

end
