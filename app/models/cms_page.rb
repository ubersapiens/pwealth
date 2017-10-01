class CmsPage < ActiveRecord::Base
  has_attached_file :image_1
  has_attached_file :image_2

  validates_attachment_content_type :image_1, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image_2, :content_type => /\Aimage\/.*\Z/
end
