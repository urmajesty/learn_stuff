class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string :title
      t.boolean :completed
      t.string :comments
      t.belongs_to :learner, null: false, foreign_key: true
      t.belongs_to :course, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
