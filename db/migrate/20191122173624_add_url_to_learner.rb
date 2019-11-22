class AddUrlToLearner < ActiveRecord::Migration[6.0]
  def change
    add_column :learners, :url, :string
  end
end
