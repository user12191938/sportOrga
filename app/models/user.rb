class User < ActiveRecord::Base
  attr_accessible :address, :age, :city, :description, :email, :imagePath, :name, :nickname, :nutritionPlan, :officeHours, :password, :plz, :sportTypes, :surname, :trainingPlan
end
