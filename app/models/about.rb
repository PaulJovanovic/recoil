class About < ActiveRecord::Base
  attr_accessible :content, :resume
  has_attached_file :resume, :url => ":s3_domain_url", :path => "/:class/resume/:id_:basename.:extension"
end
