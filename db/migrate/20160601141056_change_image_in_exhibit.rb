class ChangeImageInExhibit < ActiveRecord::Migration
  def change
    add_column :exhibits, :big_photo, :string
    add_column :exhibits, :thumb_photo, :string
  end
end
