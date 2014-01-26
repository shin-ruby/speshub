class ChangeUserGroupToSpaces < ActiveRecord::Migration
  def change
    change_table :spaces do |t|
      t.rename :user_group, :user_group_id
      t.rename :rent_env, :rent_env_id
      t.rename :num_of_people, :num_of_people_id
    end

    change_column :spaces, :user_group_id, :integer
    change_column :spaces, :rent_env_id, :integer
    change_column :spaces, :num_of_people_id, :integer
  end
end
