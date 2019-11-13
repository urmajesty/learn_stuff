class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :integer
      t.belongs_to :learner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
