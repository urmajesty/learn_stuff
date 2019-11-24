class RemoveTimestampsFromStatuses < ActiveRecord::Migration[6.0]
  def change

    remove_column :statuses, :timestamps, :datetime
  end
end
