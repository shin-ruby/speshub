class AddContentToDetaileds < ActiveRecord::Migration
  def change
    add_column :detaileds, :sort, :string
  end
end
