class Instructor < ActiveRecord::Base
  has_many :class_schedules
end
