class CreateCombativePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :combative_plants do |t|
      t.references :plant1, null: false, foreign_key: { to_table: :plants }
      t.references :plant2, null: false, foreign_key: { to_table: :plants }

      t.timestamps
    end
  end
end
