class AddCourseToStatus < ActiveRecord::Migration[6.0]
  def change
    add_column :statuses, :course, :string
  end
end
