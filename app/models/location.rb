# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  city       :string(255)
#  trip_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  attr_accessible :trip_id,  :city
  has_many :locations
  belongs_to :trip
end
