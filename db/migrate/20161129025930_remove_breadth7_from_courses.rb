class RemoveBreadth7FromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :breadth7, :string
  end
end
