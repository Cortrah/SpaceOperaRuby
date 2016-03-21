class RegionsBorder < ActiveRecord::Base
  belongs_to :source, :class_name => "Region"
  belongs_to :sink, :class_name => "Region"
  has_one :BorderType
end
