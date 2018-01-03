class CmsPage < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :image_1
  has_attached_file :image_2

  validates_attachment_content_type :image_1, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image_2, :content_type => /\Aimage\/.*\Z/

  def self.search(search)
    where("title ILIKE ? OR text_1 ILIKE ?", "%#{search}%", "%#{search}%") 
  end
end
