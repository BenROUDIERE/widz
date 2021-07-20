class CombativePlant < ApplicationRecord
  belongs_to :plant1, class_name: "Plant"
  belongs_to :plant2, class_name: "Plant"
end
