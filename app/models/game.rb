class Game < ActiveRecord::Base
  has_one :Map
  has_one :current_turn, :class_name => "Turn"
  has_many :Turns
  has_many :Positions
end
