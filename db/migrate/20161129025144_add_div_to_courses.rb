class AddDivToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :div, :string
  end
end
