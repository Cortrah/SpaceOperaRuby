class Region < ActiveRecord::Base
  has_one :Environment
  belongs_to :Map
  belongs_to :PositionState
  has_many :RegionsBorders
  has_many :Areas
end
