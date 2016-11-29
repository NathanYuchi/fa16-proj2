class RemovePhysicalFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :physical, :boolean
  end
end
