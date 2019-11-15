class RemoveLearnerIdFromLanguages < ActiveRecord::Migration[6.0]
  def change

    remove_column :languages, :learner_id, :integer
  end
end
