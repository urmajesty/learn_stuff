class AddLanguageToStatus < ActiveRecord::Migration[6.0]
  def change
    add_column :statuses, :language, :string
  end
end
