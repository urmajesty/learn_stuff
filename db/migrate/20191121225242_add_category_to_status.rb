class AddCategoryToStatus < ActiveRecord::Migration[6.0]
  def change
    add_column :statuses, :category, :string
  end
end
