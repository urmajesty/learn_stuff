class Course < ApplicationRecord
    has many :languages, through: :status
    has_many :statuses
    belongs_to :learner
end
