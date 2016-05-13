class ChangeUserToAssignee < ActiveRecord::Migration
  def change
    rename_column :tasks, :user_id, :assignee_id
  end
end
