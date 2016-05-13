class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :sponsor_id
      t.string :role
      t.string :name
      t.string :email
      t.string :phone_number

      t.timestamps null: false
    end
    add_index :contacts, :sponsor_id
  end
end
