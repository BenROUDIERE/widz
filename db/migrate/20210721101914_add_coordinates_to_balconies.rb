class AddCoordinatesToBalconies < ActiveRecord::Migration[6.1]
  def change
    add_column :balconies, :latitude, :float
    add_column :balconies, :longitude, :float
  end
end
