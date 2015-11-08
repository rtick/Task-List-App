class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :Title
      t.text :Description
      t.integer :Priority
      t.date :DueDate
      t.boolean :IsCompleteToggle
      t.integer :task_list_id

      t.timestamps null: false
    end
  end
end
