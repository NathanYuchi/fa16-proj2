class RemoveInternFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :intern, :boolean
  end
end
