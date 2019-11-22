class DropProjects < ActiveRecord::Migration[6.0]
    def up
      drop_table :projects
  end
end
