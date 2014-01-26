class ChangeCityToSpaces < ActiveRecord::Migration
  change_table :spaces do |t|
    t.rename :city, :city_id
  end

  change_column :spaces, :city_id, :integer
end
