class Plant < ApplicationRecord
  has_many :balcony_plants
  has_one_attached :photo
  LUMINOSITIES = ['ombre', 'peu ensoleillé', 'ensoleillé']
  CATEGORIES = ['Comestible', 'Vivace', 'Fruits', 'Arbuste']
  validates :luminosity, presence: true, inclusion: { in: LUMINOSITIES }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  def combative_plants
    CombativePlant.where("plant1_id = :id OR plant2_id = :id", id: id)
  end
end
