class AddTermToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :term, :text
  end
end
