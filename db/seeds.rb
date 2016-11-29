# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'test.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
	t = Course.new
	t.title = row['title']
	t.units = row['units']
	t.div = row['div']
	t.arts = row['arts']
	t.bio = row['bio']
	t.histor = row['histor']
	t.intern = row['intern']
	t.philo = row['philo']
	t.physical = row['physical']
	t.social = row['social']
	t.r1a = row['r1a']
	t.r1b = row['r1b']
	t.ewriting = row['ewriting']
	t.aculture = row['aculture']
	t.ahistory = row['ahistory']
	t.qreasoning = row['qreasoning']
	t.flanguage = row['flanguage']
	t.save
end



