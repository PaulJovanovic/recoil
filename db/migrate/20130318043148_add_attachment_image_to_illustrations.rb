class AddAttachmentImageToIllustrations < ActiveRecord::Migration
  def self.up
    change_table :illustrations do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :illustrations, :image
  end
end
