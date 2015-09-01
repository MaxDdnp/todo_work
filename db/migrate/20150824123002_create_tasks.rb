class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.integer :project_id
      t.date :deadline
      t.integer :priority
      t.timestamps null: false
    end
  end
end
