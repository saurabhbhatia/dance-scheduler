class AddNoteToClassSchedules < ActiveRecord::Migration
  def change
    add_column :class_schedules, :note, :text
  end
end
