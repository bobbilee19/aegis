class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :industry
      t.string :category
      t.string :website
      t.string :location

      t.timestamps null: false
    end
  end
end
