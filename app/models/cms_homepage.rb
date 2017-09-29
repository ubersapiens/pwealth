class CmsHomepage < ActiveRecord::Base
  has_attached_file :header_image_1
  has_attached_file :header_image_2
  has_attached_file :header_image_3
  has_attached_file :header_image_4

  validates_attachment_content_type :header_image_1, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :header_image_2, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :header_image_3, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :header_image_4, :content_type => /\Aimage\/.*\Z/
end
