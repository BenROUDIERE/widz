class Task < ApplicationRecord
  belongs_to :balcony_plant
  has_one :plant, through: :balcony_plant
  CATEGORIES = ['arrosage', 'abriter']
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
