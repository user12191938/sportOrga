class SportClub < ActiveRecord::Base
  attr_accessible :address, :city, :description, :imagePath, :matchSchedule, :name, :news, :plz, :price, :sportFacility, :sportTypes, :squad, :table, :trainingHours, :website, :youthSquads
end
