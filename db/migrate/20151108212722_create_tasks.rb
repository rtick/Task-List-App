class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :Title
      t.text :Description
      t.integer :Priority
      t.date :DueDate
      t.boolean :IsCompleteToggle

      t.timestamps
    end
  end
end
