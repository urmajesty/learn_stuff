class AddTimestampsToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :timestamps, :datetime
  end
end
