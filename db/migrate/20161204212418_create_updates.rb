class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.text :body
      t.integer :venue_id
      t.integer :event_id

      t.timestamps null: false
    end
    add_index :updates, :venue_id
    add_index :updates, :event_id
  end
end
