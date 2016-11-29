class AddColumnsToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :arts, :boolean
    add_column :courses, :bio, :boolean
    add_column :courses, :histor, :boolean
    add_column :courses, :intern, :boolean
    add_column :courses, :philo, :boolean
    add_column :courses, :physical, :boolean
    add_column :courses, :social, :boolean
  end
end
