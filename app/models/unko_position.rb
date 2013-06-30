class UnkoPosition < ActiveRecord::Base
  attr_accessible :info, :latitude, :longitude, :device_id, :info_type
end
