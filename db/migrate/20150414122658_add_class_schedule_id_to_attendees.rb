class AddClassScheduleIdToAttendees < ActiveRecord::Migration
  def change
    add_column :attendees, :class_schedule_id, :integer
  end
end
