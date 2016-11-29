class RemoveHistorFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :histor, :boolean
  end
end
