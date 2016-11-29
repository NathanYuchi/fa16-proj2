# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  major      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
	has_many :courses
end
