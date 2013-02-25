class CreateAdContacts < ActiveRecord::Migration
  def change
    create_table :ad_contacts do |t|
      t.string :adSchedule
      t.string :company
      t.text :description
      t.string :name
      t.string :surname
      t.string :position
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
