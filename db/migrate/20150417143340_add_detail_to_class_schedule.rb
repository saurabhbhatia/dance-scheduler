class AddDetailToClassSchedule < ActiveRecord::Migration
  def change
    add_column :class_schedules, :detail, :text
  end
end
