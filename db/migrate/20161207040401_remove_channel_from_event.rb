class RemoveChannelFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :channel
  end
end
