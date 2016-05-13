class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.string :description
      t.date :delivery_date
      t.integer :contact_id

      t.timestamps null: false
    end
    add_index :deliverables, :contact_id
  end
end
