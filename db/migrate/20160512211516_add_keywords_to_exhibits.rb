class AddKeywordsToExhibits < ActiveRecord::Migration
  def change
    add_column :exhibits, :keywords, :text
  end
end
