class DeleteExtraFromExhibit < ActiveRecord::Migration
  def change
    remove_column :exhibits, :extra
  end
end
