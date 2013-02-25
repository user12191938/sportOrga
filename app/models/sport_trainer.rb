class SportTrainer < ActiveRecord::Base
  attr_accessible :address, :city, :description, :focus, :imagePath, :name, :officeHours, :phone, :plz, :price, :sportFacility, :subjectArea, :surname
end
