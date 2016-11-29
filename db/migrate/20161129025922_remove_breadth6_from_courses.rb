class RemoveBreadth6FromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :breadth6, :string
  end
end
