class BalconyPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :balcony
  has_many :tasks, dependent: :destroy

  validates :plant_id, uniqueness: { scope: :balcony_id }
end
