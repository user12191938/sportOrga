class CreateSportDoctors < ActiveRecord::Migration
  def change
    create_table :sport_doctors do |t|
      t.string :imagePath
      t.string :name
      t.string :surname
      t.text :description
      t.string :address
      t.integer :plz
      t.string :city
      t.float :price
      t.string :profession
      t.string :subjectArea

      t.timestamps
    end
  end
end
