class CreateCords < ActiveRecord::Migration
  def change
    create_table :cords do |t|
      t.references :exhibit, index: true, foreign_key: true
      t.string :cord

      t.timestamps null: false
    end
  end
end
