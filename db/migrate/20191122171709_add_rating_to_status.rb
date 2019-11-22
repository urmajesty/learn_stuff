class AddRatingToStatus < ActiveRecord::Migration[6.0]
  def change
    add_column :statuses, :rating, :integer
  end
end
