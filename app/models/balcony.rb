class Balcony < ApplicationRecord
  belongs_to :user
  has_many :balcony_plants
end
