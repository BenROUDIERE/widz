class Task < ApplicationRecord
  belongs_to :balcony_plant
  has_many :plants, through: :balcony_plants, source: :plant
end
