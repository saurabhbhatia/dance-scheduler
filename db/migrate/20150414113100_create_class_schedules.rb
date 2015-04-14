class CreateClassSchedules < ActiveRecord::Migration
  def change
    create_table :class_schedules do |t|
      t.string :title
      t.datetime :date
      t.integer :instructor_id
      t.integer :status
      t.integer :spots
      t.time :start_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end
