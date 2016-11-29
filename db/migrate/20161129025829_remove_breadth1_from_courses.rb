class RemoveBreadth1FromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :breadth1, :string
  end
end
