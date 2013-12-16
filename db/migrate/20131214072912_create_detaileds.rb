class CreateDetaileds < ActiveRecord::Migration
  def change
    create_table :detaileds do |t|
      t.string :content

      t.timestamps
    end
  end
end
