class DeleteExhibitIdFromExhibit < ActiveRecord::Migration
  def change
    remove_column :exhibits, :exhibit_id
  end
end
