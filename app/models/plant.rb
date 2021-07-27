class Plant < ApplicationRecord
  has_many :balcony_plants, dependent: :destroy
  has_one_attached :photo

  LUMINOSITIES = ['ombre', 'peu ensoleillé', 'ensoleillé']
  CATEGORIES = ['comestible', 'vivace', 'fruits', 'arbuste']
  
  validates :luminosity, presence: true, inclusion: { in: LUMINOSITIES }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true }
    }
  def combative_plants
    CombativePlant.where("plant1_id = :id OR plant2_id = :id", id: id)
  end
end
