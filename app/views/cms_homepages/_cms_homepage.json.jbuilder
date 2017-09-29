json.extract! cms_homepage, :id, :header_1, :caption_1, :header_2, :caption_2, :header_3, :caption_3, :header_4, :caption_4, :description, :news_title_1, :news_content_1, :news_link_1, :news_title_2, :news_content_2, :news_link_2, :news_title_3, :news_content_3.text, :news_link_3, :created_at, :updated_at
json.url cms_homepage_url(cms_homepage, format: :json)
