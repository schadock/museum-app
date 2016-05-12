class AddExIdToExhibit < ActiveRecord::Migration
  def change
    add_column :exhibits, :ex_id, :integer
  end
end
