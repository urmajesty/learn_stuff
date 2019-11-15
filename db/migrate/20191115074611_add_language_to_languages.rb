class AddLanguageToLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :language, :string
  end
end
