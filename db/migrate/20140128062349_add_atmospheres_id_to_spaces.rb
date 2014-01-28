class AddAtmospheresIdToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :atmosphere_id, :integer
  end
end
