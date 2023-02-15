class Device < ApplicationRecord
  has_many :temperatures, dependent: :destroy
  has_many :water_temperatures, dependent: :destroy
end
