class AddExhibitIdToExhibit < ActiveRecord::Migration
  def change
    add_column :exhibits, :exhibit_id, :integer
  end
end
