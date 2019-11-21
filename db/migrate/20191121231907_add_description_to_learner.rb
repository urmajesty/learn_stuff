class AddDescriptionToLearner < ActiveRecord::Migration[6.0]
  def change
    add_column :learners, :description, :string
  end
end
