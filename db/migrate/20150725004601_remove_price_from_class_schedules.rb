class RemovePriceFromClassSchedules < ActiveRecord::Migration
  def change
    remove_column :class_schedules, :price, :float
  end
end
