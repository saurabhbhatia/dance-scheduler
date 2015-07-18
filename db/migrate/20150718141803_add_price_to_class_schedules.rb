class AddPriceToClassSchedules < ActiveRecord::Migration
  def change
    add_column :class_schedules, :price, :decimal
  end
end
