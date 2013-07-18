# == Schema Information
#
# Table name: landmarks
#
#  id          :integer          not null, primary key
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Landmark < ActiveRecord::Base
  attr_accessible :trip_id, :image, :bio, :landmark_name
  belongs_to :trip
end
