class Position < ActiveRecord::Base
  has_many :PositionStates
  belongs_to :Game
end
