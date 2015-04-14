class RemoveClassIdFromAttendees < ActiveRecord::Migration
  def change
    remove_column :attendees, :class_id, :integer
  end
end
