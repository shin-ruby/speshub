class AddRuleToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :rule, :text
  end
end
