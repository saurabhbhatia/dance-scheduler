class AddImagePathToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :image_path, :string
  end
end
