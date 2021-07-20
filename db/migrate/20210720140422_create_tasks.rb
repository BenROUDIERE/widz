class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.boolean :completed, default: false
      t.string :category
      t.text :message
      t.string :title
      t.date :due_date
      t.references :balcony_plant, null: false, foreign_key: true
      t.timestamps
    end
  end
end
