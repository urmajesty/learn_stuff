class AddDateToLanguage < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :date, :datetime
  end
end
