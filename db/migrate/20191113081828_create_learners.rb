class CreateLearners < ActiveRecord::Migration[6.0]
  def change
    create_table :learners do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :github
      t.string :twitter
      t.string :linkedin
      t.string :status
     

      t.timestamps
    end
  end
end
