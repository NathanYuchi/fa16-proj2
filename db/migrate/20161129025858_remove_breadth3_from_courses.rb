class RemoveBreadth3FromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :breadth3, :string
  end
end
