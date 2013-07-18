# == Schema Information
#
# Table name: trips
#
#  id         :integer          not null, primary key
#  city       :string(255)
#  user_ids   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trip < ActiveRecord::Base
  attr_accessible :start, :end, :user_id, :directions
  has_many :landmarks
  belongs_to :user
end
