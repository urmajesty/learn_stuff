class Language < ApplicationRecord
  belongs_to :learner
  has_many :statuses
  has_many :projects, through: :statuses
  has_many :courses, through: :statuses

  validates :language, presence: true

  validate :unique

  scope :order_alpha_reverse, -> { order(title: :desc)}

  def unique
    if Language.find_by(language: language, learner_id: learner_id)
      errors.add("language", "is a duplicate - this language has already been created")
    end
  end
end
