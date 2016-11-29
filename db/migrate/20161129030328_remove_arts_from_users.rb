class RemoveArtsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :arts, :boolean
  end
end
