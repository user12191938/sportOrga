class CreateAdSchedules < ActiveRecord::Migration
  def change
    create_table :ad_schedules do |t|
      t.string :imagePath
      t.string :company
      t.text :description
      t.string :contact
      t.string :subjectArea
      t.float :price
      t.integer :duration
      t.float :size
      t.integer :timeShift

      t.timestamps
    end
  end
end
