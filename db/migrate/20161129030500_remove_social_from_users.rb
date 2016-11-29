class RemoveSocialFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :social, :boolean
  end
end
