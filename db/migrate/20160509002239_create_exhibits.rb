class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :title
      t.string :author
      t.integer :date_of_origin
      t.string :place_of_origin
      t.string :description

      t.timestamps null: false
    end
  end
end
