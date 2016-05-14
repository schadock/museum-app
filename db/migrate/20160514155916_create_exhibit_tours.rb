class CreateExhibitTours < ActiveRecord::Migration
  def change
    create_table :exhibit_tours do |t|
      t.references :exhibit, index: true, foreign_key: true
      t.references :tour, index: true, foreign_key: true
      t.integer :positon

      t.timestamps null: false
    end
  end
end
