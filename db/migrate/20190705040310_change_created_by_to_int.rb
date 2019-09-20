class ChangeCreatedByToInt < ActiveRecord::Migration[5.2]
  def change
    change_column :todos, :created_by, :integer
  end
end
