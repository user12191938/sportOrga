class SportFacility < ActiveRecord::Base
  attr_accessible :address, :city, :description, :events, :imagePath, :name, :openingHours, :plz, :price, :sportTypes
end
