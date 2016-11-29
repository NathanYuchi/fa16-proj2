# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  title      :string
#  units      :integer
#  div        :string
#  arts       :boolean
#  bio        :boolean
#  histor     :boolean
#  intern     :boolean
#  philo      :boolean
#  physical   :boolean
#  social     :boolean
#  r1a        :boolean
#  r1b        :boolean
#  ewriting   :boolean
#  aculture   :boolean
#  ahistory   :boolean
#  qreasoning :boolean
#  flanguage  :boolean
#  created_at :datetime
#  updated_at :datetime
#  user_id    :string
#

class Course < ActiveRecord::Base
  belongs_to :schedule
end
