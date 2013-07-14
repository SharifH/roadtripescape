class Location < ActiveRecord::Base
  attr_accessible :trip_id, :city
  has_many :locations
  belongs_to :trip
end
