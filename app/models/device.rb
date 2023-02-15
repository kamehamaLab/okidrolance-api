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
end
