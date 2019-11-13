class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.string :comments
      t.datetime :date_completed

      t.timestamps
    end
  end
end
