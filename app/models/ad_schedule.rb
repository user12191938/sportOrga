class AdSchedule < ActiveRecord::Base
  attr_accessible :company, :contact, :description, :duration, :imagePath, :price, :size, :subjectArea, :timeShift
end
