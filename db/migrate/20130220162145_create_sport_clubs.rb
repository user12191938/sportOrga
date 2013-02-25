class CreateSportClubs < ActiveRecord::Migration
  def change
    create_table :sport_clubs do |t|
      t.string :imagePath
      t.string :name
      t.text :description
      t.string :address
      t.integer :plz
      t.string :city
      t.float :price
      t.text :sportTypes
      t.string :sportFacility
      t.text :trainingHours
      t.text :news
      t.string :table
      t.string :matchSchedule
      t.string :website
      t.string :squad
      t.string :youthSquads

      t.timestamps
    end
  end
end
