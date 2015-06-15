class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :menu_id
      t.string :filename

      t.timestamps null: false
    end
  end
end
