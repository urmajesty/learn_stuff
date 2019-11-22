class AddUrlToStatus < ActiveRecord::Migration[6.0]
  def change
    add_column :statuses, :url, :string
  end
end
