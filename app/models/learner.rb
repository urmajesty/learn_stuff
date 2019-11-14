class Learner < ApplicationRecord
    has_many :languages
    has_many :courses
    has_many :projects
    has_many :courses, through: :languages
    has_many :projects, through: :languages
end
