class Course < ApplicationRecord
    has_many :languages, through: :statuses
    has_many :statuses, dependent: :destroy
    belongs_to :learner

   

    #validates :title, :description, presence: true

    #scope :order_by_popularity, -> { Course.left_joins(:statuses).group(:id).order("count(statuses.course_id) desc") }
  
   
    scope :by_recently_added, -> { order(created_at: :desc) }
end
