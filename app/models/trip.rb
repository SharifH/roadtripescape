class Trip < ActiveRecord::Base
  attr_accessible :start, :end, :user_id
  has_many :locations
  belongs_to :user
end
