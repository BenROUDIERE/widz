class Balcony < ApplicationRecord
  belongs_to :user
  has_many :balcony_plants, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :luminosity, presence: true, inclusion: { in: Plant::LUMINOSITIES }
  validates :city, :water_need, :rain_exposed, :size, :number_of_plants_desired, :categories, presence: true
end
