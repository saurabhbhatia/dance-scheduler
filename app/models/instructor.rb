class Instructor < ActiveRecord::Base
  has_many :class_schedules
  enum status: [:active, :deleted]
end
