class Learner < ApplicationRecord
    has_many :languages  
    has_many :courses, through: :languages
    has_many :projects, through: :languages
    has_many :created_courses, foreign_key: "learner_id", class_name: "Course"
    has_secure_password
    validates :username, :email, presence: true
    validates :username, uniqueness: true
end
