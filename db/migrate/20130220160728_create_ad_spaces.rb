class CreateAdSpaces < ActiveRecord::Migration
  def change
    create_table :ad_spaces do |t|
      t.string :adSchedule
      t.string :contact
      t.string :subjectArea
      t.float :price
      t.float :size

      t.timestamps
    end
  end
end
