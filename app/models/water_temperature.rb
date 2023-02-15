# == Schema Information
#
# Table name: water_temperatures
#
#  id         :bigint           not null, primary key
#  w_temp     :float(24)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  devices_id :bigint           not null
#
# Indexes
#
#  index_water_temperatures_on_devices_id  (devices_id)
#
# Foreign Keys
#
#  fk_rails_...  (devices_id => devices.id)
#
class WaterTemperature < ApplicationRecord
  belongs_to :device
end
