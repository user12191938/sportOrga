class AdContact < ActiveRecord::Base
  attr_accessible :adSchedule, :company, :description, :email, :name, :phone, :position, :surname
end
