class AddTypeToExhibits < ActiveRecord::Migration
  def change
    add_reference :exhibits, :type, index: true, foreign_key: true
  end
end
