class RenameColumnToSpaces < ActiveRecord::Migration
  change_table :spaces do |t|
    t.rename :space_setting, :space_setting_id
  end
end
