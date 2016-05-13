class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :sponsor_id
      t.integer :user_id
      t.datetime :contact_at
      t.string :channel
      t.text :description

      t.timestamps null: false
    end
    add_index :events, :sponsor_id
    add_index :events, :user_id
  end
end
