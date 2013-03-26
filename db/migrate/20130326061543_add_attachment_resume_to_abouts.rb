class AddAttachmentResumeToAbouts < ActiveRecord::Migration
  def self.up
    change_table :abouts do |t|
      t.attachment :resume
    end
  end

  def self.down
    drop_attached_file :abouts, :resume
  end
end
