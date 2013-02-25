class CreateSportFacilities < ActiveRecord::Migration
  def change
    create_table :sport_facilities do |t|
      t.string :imagePath
      t.string :name
      t.text :description
      t.string :address
      t.integer :plz
      t.string :city
      t.float :price
      t.text :openingHours
      t.text :sportTypes
      t.text :events

      t.timestamps
    end
  end
end
