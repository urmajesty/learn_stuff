class RemoveProjectFromStatuses < ActiveRecord::Migration[6.0]
  def up
    remove_column :statuses, :project_id, :integer
  end
end
