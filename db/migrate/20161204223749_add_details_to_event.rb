class AddDetailsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :start_date, :datetime
    add_column :events, :end_date, :datetime
    add_column :events, :location, :string
    remove_column :events, :contact_at
  end
end
