class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :exhibit, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
