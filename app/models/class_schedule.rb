class ClassSchedule < ActiveRecord::Base
  belongs_to :instructor
  has_many :attendees
  
  enum status: [:active, :archived, :deleted]
end
