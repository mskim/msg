class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :station
      t.string :school
      t.string :library
      t.string :city

      t.timestamps null: false
    end
  end
end
