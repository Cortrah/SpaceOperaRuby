class Map < ActiveRecord::Base
  has_many :Areas
  has_many :Regions
  belongs_to :Game
end
