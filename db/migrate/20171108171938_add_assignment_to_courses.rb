class AddAssignmentToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :assignment, :string
  end
end
