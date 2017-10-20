class AddDescriptionImageToCmsHomepages < ActiveRecord::Migration
  def change
    add_attachment :cms_homepages, :description_image
  end
end
