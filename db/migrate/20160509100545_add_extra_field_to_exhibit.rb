class AddExtraFieldToExhibit < ActiveRecord::Migration
  def change
    add_column :exhibits, :extra, :string
  end
end
