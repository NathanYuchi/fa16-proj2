class AddUserIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :user_id, :string
  end
end
