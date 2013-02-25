class SportDoctor < ActiveRecord::Base
  attr_accessible :address, :city, :description, :imagePath, :name, :plz, :price, :profession, :subjectArea, :surname
end
