class AddManyToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :user_id, :string
    add_column :schedules, :fr1, :text
    add_column :schedules, :fr2, :text
    add_column :schedules, :so1, :text
    add_column :schedules, :so2, :text
    add_column :schedules, :ju1, :text
    add_column :schedules, :ju2, :text
    add_column :schedules, :se1, :text
    add_column :schedules, :se2, :text
  end
end
