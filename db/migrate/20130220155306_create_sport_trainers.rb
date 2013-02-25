class CreateSportTrainers < ActiveRecord::Migration
  def change
    create_table :sport_trainers do |t|
      t.string :imagePath
      t.string :name
      t.string :surname
      t.text :description
      t.string :address
      t.integer :plz
      t.string :city
      t.float :price
      t.text :officeHours
      t.string :subjectArea
      t.text :focus
      t.string :phone
      t.string :sportFacility

      t.timestamps
    end
  end
end
