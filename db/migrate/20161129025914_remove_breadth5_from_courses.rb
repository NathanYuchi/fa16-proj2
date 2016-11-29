class RemoveBreadth5FromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :breadth5, :string
  end
end
