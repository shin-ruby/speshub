class ChangeColumnToSpaces < ActiveRecord::Migration
  def change
    change_column :spaces, :space_setting_id, :integer
  end
end
