class RenameCreatedByToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :todos, :created_by, :user_id
  end
end
