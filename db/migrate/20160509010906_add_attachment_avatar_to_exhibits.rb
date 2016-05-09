class AddAttachmentAvatarToExhibits < ActiveRecord::Migration
  def self.up
    change_table :exhibits do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :exhibits, :avatar
  end
end
