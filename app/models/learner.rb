class Learner < ApplicationRecord
    has_many :languages  
    has_many :courses, through: :languages
    has_many :projects, through: :languages
    has_many :created_courses, foreign_key: "learner_id", class_name: "Course"
    has_secure_password
    validates :username, :email, presence: true
    validates :username, uniqueness: true

def self.from_omniauth(auth)
    #there are many ways to do it
      where(email: auth.info.email).first_or_initialize do |learner|
        learner.username = auth.info.name
        learner.email = auth.info.email
        learner.password = SecureRandom.hex
      end
    end
end