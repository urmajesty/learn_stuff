class AddCategoryToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :category, :string
  end
end
