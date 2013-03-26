class Step < ActiveRecord::Base
  default_scope order('placement ASC')
  attr_accessible :description, :step, :image, :placement
  validates_attachment_presence :image
  has_attached_file :image, :styles => { :large => "800x800", :medium => "300x300>", :thumb => "100x100>"}, :url => ":s3_domain_url", :path => "/:class/images/:id_:basename.:style.:extension"
end
