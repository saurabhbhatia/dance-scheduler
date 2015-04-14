class ClassSchedule < ActiveRecord::Base
  belongs_to :instructor
  enum status: [:active, :archived, :deleted]
end
