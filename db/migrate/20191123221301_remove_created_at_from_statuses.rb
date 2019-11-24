class RemoveCreatedAtFromStatuses < ActiveRecord::Migration[6.0]
  def change

    remove_column :statuses, :created_at, :datetime
  end
end
