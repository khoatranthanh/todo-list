class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :sub_title, null: false
      t.datetime :due_date, null: false
      t.string :priority, null: false

      t.timestamps
    end
  end
end
