class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :space_setting
      t.string :user_group
      t.string :rent_env
      t.string :num_of_people
      t.string :city
      t.decimal :price_hour, :precision => 8, :scale =>2, :default =>0
      t.decimal :price_day, :precision => 8, :scale =>2, :default =>0
      t.decimal :price_month, :precision => 8, :scale =>2, :default =>0
      t.decimal :price_year, :precision => 8, :scale =>2, :default =>0
      t.string :title
      t.text :content
      t.string :photo
      t.string :detailed

      t.timestamps
    end
  end
end
