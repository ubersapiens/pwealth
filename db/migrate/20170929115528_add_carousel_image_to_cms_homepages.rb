class AddCarouselImageToCmsHomepages < ActiveRecord::Migration
  def change
    add_attachment :cms_homepages, :header_image_1
    add_attachment :cms_homepages, :header_image_2
    add_attachment :cms_homepages, :header_image_3
    add_attachment :cms_homepages, :header_image_4
  end
end
