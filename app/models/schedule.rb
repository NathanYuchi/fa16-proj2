# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Schedule < ActiveRecord::Base
  belongs_to :user
  has_many :courses

  serialize :fr1,Array
  serialize :fr2,Array
  serialize :so1,Array
  serialize :so2,Array
  serialize :ju1,Array
  serialize :ju2,Array
  serialize :se1,Array
  serialize :se2,Array

end
