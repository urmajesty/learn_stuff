class AddCategoryToLearner < ActiveRecord::Migration[6.0]
  def change
    add_column :learners, :category, :string
  end
end
