class CreateBalconyPlants < ActiveRecord::Migration[6.1]
  def change
    create_table :balcony_plants do |t|
      t.boolean :planted, default: false
      t.references :plant, null: false, foreign_key: true
      t.references :balcony, null: false, foreign_key: true

      t.timestamps
    end
  end
end
