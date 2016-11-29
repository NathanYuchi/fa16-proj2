class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :arts, :boolean
    add_column :users, :bio, :boolean
    add_column :users, :histor, :boolean
    add_column :users, :intern, :boolean
    add_column :users, :philo, :boolean
    add_column :users, :physical, :boolean
    add_column :users, :social, :boolean
  end
end
