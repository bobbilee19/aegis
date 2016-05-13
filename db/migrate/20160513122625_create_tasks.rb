class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :sponsor_id
      t.integer :user_id
      t.datetime :remind_at
      t.text :description

      t.timestamps null: false
    end
    add_index :tasks, :sponsor_id
    add_index :tasks, :user_id
  end
end
