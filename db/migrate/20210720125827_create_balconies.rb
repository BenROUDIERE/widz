class CreateBalconies < ActiveRecord::Migration[6.1]
  def change
    create_table :balconies do |t|
      t.string :title
      t.string :luminosity
      t.string :city
      t.string :size
      t.string :rain_exposed
      t.integer :number_of_plants_desired
      t.string :water_need
      t.string :categories, array: true, default: []
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
