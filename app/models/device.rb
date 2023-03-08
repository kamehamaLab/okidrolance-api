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
        self.temperatures.map(&:temp),

      w_temp:
        self.water_temperatures.map(&:w_temp),

      illum:
        self.illuminations.map(&:illum),

      created_at:
        self.temperatures.map(&:created_at)
    }
  end
end
