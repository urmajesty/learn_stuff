class AddTitleToLanguage < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :title, :string
  end
end
