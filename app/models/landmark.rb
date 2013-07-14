class Landmark < ActiveRecord::Base
  attr_accessible :location_id, :landmark_name
  belongs_to :location
end
