class Course < ApplicationRecord
    has_many :languages, through: :status
    has_many :statuses
    belongs_to :learner

    validates :title, :description, presence: true

    scope :by_recently_added, -> { order(created_at: :desc) }
end
