class Step < ActiveRecord::Base
  attr_accessible :description, :step, :image
  validates_attachment_presence :image
  has_attached_file :image, :styles => { :large => "800x800", :medium => "300x300>", :thumb => "100x100>" }
end
