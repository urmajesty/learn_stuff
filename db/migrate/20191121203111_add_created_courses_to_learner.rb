class AddCreatedCoursesToLearner < ActiveRecord::Migration[6.0]
  def change
    add_column :learners, :created_courses, :string
  end
end
