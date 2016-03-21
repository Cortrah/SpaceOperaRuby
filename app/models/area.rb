class Area < ActiveRecord::Base
  has_many :Regions
  belongs_to :Map
end
