class Attendee < ActiveRecord::Base
	belongs_to :class_schedule
  validates :age, numericality: true
  validates :email, presence: true, email: true
  validates :name, presence: true
end
