class Course < ApplicationRecord
    has_many :languages, through: :status
    has_many :statuses
    belongs_to :learner
end
