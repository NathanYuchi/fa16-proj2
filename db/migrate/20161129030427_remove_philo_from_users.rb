class RemovePhiloFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :philo, :boolean
  end
end
