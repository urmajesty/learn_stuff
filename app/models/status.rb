class Status < ApplicationRecord
    belongs_to :course
    belongs_to :language
    belongs_to :project
end
