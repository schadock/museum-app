class DeletePlaceOfOriginAndChangeDateOfOrigin < ActiveRecord::Migration
  def self.up
    remove_column :exhibits, :place_of_origin
    change_column :exhibits, :date_of_origin, :string
  end

  def self.down
    add_column :exhibits, :place_of_origin, :string
    change_column :exhibits, :date_of_origin, :integer
  end
end
