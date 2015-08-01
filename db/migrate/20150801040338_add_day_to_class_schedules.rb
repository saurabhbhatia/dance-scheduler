class AddDayToClassSchedules < ActiveRecord::Migration
  def change
    add_column :class_schedules, :day, :string
  end
end
