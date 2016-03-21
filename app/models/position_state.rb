class PositionState < ActiveRecord::Base
  belongs_to :Position
  belongs_to :Turn
  has_many :Regions
end
