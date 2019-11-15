class RemoveStatusFromLearners < ActiveRecord::Migration[6.0]
  def change

    remove_column :learners, :status, :string
  end
end
