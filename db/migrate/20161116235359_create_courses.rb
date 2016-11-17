class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :coursenum
      t.string :department
      t.boolean :breadth1
      t.boolean :breadth2
      t.boolean :breadth3
      t.boolean :breadth4
      t.boolean :breadth5
      t.boolean :breadth6
      t.boolean :breadth7
      t.boolean :r1a
      t.boolean :r1b
      t.boolean :ewriting
      t.boolean :aculture
      t.boolean :ahistory
      t.boolean :qreasoning
      t.boolean :flanguage
      t.integer :units
      t.string :title

      t.timestamps null: false
    end
  end
end
