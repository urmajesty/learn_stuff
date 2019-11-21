class AddLearnerIdToLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :learner_id, :integer
  end
end
