class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.date :due_date
      t.boolean :is_complete_toggle
      t.integer :task_list_id

      t.timestamps null: false
    end
  end
end
