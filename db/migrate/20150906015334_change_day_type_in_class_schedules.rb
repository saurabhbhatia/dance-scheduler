class ChangeDayTypeInClassSchedules < ActiveRecord::Migration
  def change
    change_column :class_schedules, :day, 'integer USING CAST(day AS integer)'
  end
end
