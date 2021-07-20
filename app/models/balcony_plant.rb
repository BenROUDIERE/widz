class BalconyPlant < ApplicationRecord
  belongs_to :plant
  belongs_to :balcony
  has_many :tasks, dependent: :destroy
  
end
