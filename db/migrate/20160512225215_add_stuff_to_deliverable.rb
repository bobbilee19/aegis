class AddStuffToDeliverable < ActiveRecord::Migration
  def change
    add_column :deliverables, :sponsor_id, :integer
    add_index :deliverables, :sponsor_id
    add_column :deliverables, :category, :string
  end
end
