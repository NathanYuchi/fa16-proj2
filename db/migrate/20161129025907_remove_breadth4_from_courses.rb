class RemoveBreadth4FromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :breadth4, :string
  end
end
