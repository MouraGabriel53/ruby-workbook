class Vehicle < ApplicationRecord
  validates :brand, :model, :year, presence: true
end
