class AddLanguageToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :language, :text
  end
end
