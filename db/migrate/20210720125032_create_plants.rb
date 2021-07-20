class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :luminosity
      t.string :water_need
      t.integer :water_frequency_in_days
      t.string :plantation_months, array: true, default: []
      t.string :harvest_months, array: true, default: []
      t.integer :min_temp
      t.integer :max_temp
      t.integer :spacing_in_cm
      t.text :disease

      t.timestamps
    end
  end
end
