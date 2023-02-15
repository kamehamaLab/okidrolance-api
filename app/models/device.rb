class Device < ApplicationRecord
  has_many :temperatures, dependent: :destroy
end
