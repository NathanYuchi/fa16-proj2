class RemoveBreadth2FromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :breadth2, :string
  end
end
