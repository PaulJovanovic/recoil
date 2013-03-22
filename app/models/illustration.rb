class Illustration < ActiveRecord::Base
  attr_accessible :description, :title, :image
  validates_attachment_presence :image
  has_attached_file :image
end
