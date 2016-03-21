class Turn < ActiveRecord::Base
  has_many :Positions
  belongs_to :Game
end
