# == Schema Information
#
# Table name: devices
#
#  id         :bigint           not null, primary key
#  location   :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Device < ApplicationRecord
  has_many :temperatures, dependent: :destroy
  has_many :water_temperatures, dependent: :destroy
  has_many :illuminations, dependent: :destroy

  def adjust_json
    {
      id: self.id,
      location: self.location
    }
  end

  def adjust_show_json
    {
      temp:
        self.temperatures.map do |temperature|
          temperature.temp
        end,

      w_temp:
        self.water_temperatures.map do |water_temperature|
          water_temperature.w_temp
        end,

      illum:
        self.illuminations.map do |illumination|
          illumination.illum
        end,

      created_at:
        self.temperatures.map do |temperature|
          temperature.created_at
        end
    }
  end
end
