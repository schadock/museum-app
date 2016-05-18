class RenameColumAnswerContent < ActiveRecord::Migration
  def change
    rename_column :answers, :contetn, :content
  end
end
