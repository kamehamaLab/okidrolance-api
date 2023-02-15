# == Schema Information
#
# Table name: temperatures
#
#  id         :bigint           not null, primary key
#  temp       :float(24)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  device_id  :bigint           not null
#
# Indexes
#
#  index_temperatures_on_device_id  (device_id)
#
# Foreign Keys
#
#  fk_rails_...  (device_id => devices.id)
#
class Temperature < ApplicationRecord
  belongs_to :device
end
