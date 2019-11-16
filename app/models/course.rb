class Course < ApplicationRecord
    has_many :languages, through: :status
    has_many :statuses
    belongs_to :learner

    validates :title, :description, presence: true

  scope :order_by_popularity, -> { Course.left_joins(:statuses).group(:id).order("count(statuses.course_id) desc") }
  #order by how many statuses
end

