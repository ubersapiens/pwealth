class AddFifthHeaderToHomepages < ActiveRecord::Migration
  def change
    add_attachment :cms_homepages, :header_image_5
    add_column :cms_homepages, :header_title_5, :string
    add_column :cms_homepages, :header_caption_5, :string
  end
end
