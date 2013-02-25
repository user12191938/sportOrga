class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :imagePath
      t.string :name
      t.string :surname
      t.string :nickname
      t.integer :age
      t.string :password
      t.string :email
      t.text :description
      t.string :address
      t.integer :plz
      t.string :city
      t.text :sportTypes
      t.text :officeHours
      t.string :trainingPlan
      t.string :nutritionPlan

      t.timestamps
    end
  end
end
