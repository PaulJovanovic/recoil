class Advertisement < ActiveRecord::Base
  default_scope order('placement ASC')
  attr_accessible :description, :title, :image, :placement
  validates_attachment_presence :image
  has_attached_file :image, :styles => { :large => "800x800", :medium => "300x300>", :thumb => "100x100>" }, :url => "/:class/:attachment/:id_partition/:style/:filename"
end
