class ClassSchedule < ActiveRecord::Base
  belongs_to :instructor
  has_many :attendees
  
  DAYS = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
  enum status: [:active, :archived, :deleted]
end
