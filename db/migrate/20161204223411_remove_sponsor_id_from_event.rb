class RemoveSponsorIdFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :sponsor_id
  end
end
