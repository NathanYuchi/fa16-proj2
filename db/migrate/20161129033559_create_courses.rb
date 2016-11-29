class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
   			t.string :title
   			t.integer :units
   			t.string :department
   			t.string :div
   			t.boolean  :arts
		    t.boolean  :bio
		    t.boolean  :histor
		    t.boolean  :intern
		    t.boolean  :philo
		    t.boolean  :physical
		    t.boolean  :social
		    t.boolean  :r1a
		    t.boolean  :r1b
		    t.boolean  :ewriting
		    t.boolean  :aculture
		    t.boolean  :ahistory
		    t.boolean  :qreasoning
		    t.boolean  :flanguage
		    t.timestamps
    end
  end
end
