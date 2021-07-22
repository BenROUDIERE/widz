class Balcony < ApplicationRecord
  belongs_to :user
  has_many :balcony_plants, dependent: :destroy

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  RAIN_EXPOSED = ['casi-sec', "pas trop mal arrosé",'arrosé comme jamais']
  WATER_NEED = ['rien du tout', 'un peu','beaucoup' ]
  CATEGORIES = ['comestible', 'vivace', 'fruits', 'arbuste']
  validates :categories, presence: true, inclusion: { in: CATEGORIES }
  validates :luminosity, presence: true, inclusion: { in: Plant::LUMINOSITIES }
  validates :city, :water_need, :rain_exposed, :size, :number_of_plants_desired, :categories, presence: true
end
