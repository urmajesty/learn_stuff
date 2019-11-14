class Language < ApplicationRecord
  belongs_to :course
  belongs_to :project
  belongs_to :learner
  has_many :statuses
  has_many :projects, through: :statuses
  has_many :courses, through: :statuses

  belongs_to :project
end
