class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :state
      t.string :website
      t.string :phone
      t.string :email
      t.string :contact_name
      t.boolean :alcohol
      t.string :distance_from_airport
      t.boolean :religious
      t.boolean :lake
      t.boolean :rental_on_site
      t.boolean :connected
      t.string :status

      t.timestamps null: false
    end
  end
end
