class RemoveCoursenumFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :coursenum, :string
  end
end
