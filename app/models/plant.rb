class Plant < ApplicationRecord
  has_many :balcony_plants
  LUMINOSITIES = ['ombre', 'peu ensoleillé', 'ensoleillé']
  validates :luminosity, presence: true, inclusion: { in: LUMINOSITIES }
  def combative_plants
    CombativePlant.where("plant1_id = :id OR plant2_id = :id", id: id)
  end
end
