class RemoveUpdatedAtFromStatuses < ActiveRecord::Migration[6.0]
  def change

    remove_column :statuses, :updated_at, :datetime
  end
end
