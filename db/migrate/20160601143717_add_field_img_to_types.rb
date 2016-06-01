class AddFieldImgToTypes < ActiveRecord::Migration
  def change
    add_column :types, :photo, :string
  end
end
