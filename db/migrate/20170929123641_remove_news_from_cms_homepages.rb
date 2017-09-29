class RemoveNewsFromCmsHomepages < ActiveRecord::Migration
  def change
    remove_column :cms_homepages, :news_title_1
    remove_column :cms_homepages, :news_title_2
    remove_column :cms_homepages, :news_title_3
    remove_column :cms_homepages, :news_content_1
    remove_column :cms_homepages, :news_content_2
    remove_column :cms_homepages, :news_content_3
    remove_column :cms_homepages, :news_link_1
    remove_column :cms_homepages, :news_link_2
    remove_column :cms_homepages, :news_link_3
  end
end
