class CreateCmsHomepages < ActiveRecord::Migration
  def change
    create_table :cms_homepages do |t|
      t.string :header_title_1
      t.string :header_caption_1
      t.string :header_title_2
      t.string :header_caption_2
      t.string :header_title_3
      t.string :header_caption_3
      t.string :header_title_4
      t.string :header_caption_4
      t.text :main_description
      t.string :news_title_1
      t.text :news_content_1
      t.string :news_link_1
      t.string :news_title_2
      t.text :news_content_2
      t.string :news_link_2
      t.string :news_title_3
      t.text :news_content_3
      t.string :news_link_3

      t.timestamps null: false
    end
  end
end
