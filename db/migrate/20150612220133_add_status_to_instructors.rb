class AddStatusToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :status, :integer
  end
end
