class AddLanguageToLearner < ActiveRecord::Migration[6.0]
  def change
    add_column :learners, :language, :string
  end
end
