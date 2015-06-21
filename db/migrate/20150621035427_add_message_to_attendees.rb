class AddMessageToAttendees < ActiveRecord::Migration
  def change
    add_column :attendees, :message, :text
  end
end
