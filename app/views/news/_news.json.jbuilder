json.extract! news, :id, :title, :content, :link, :created_at, :updated_at
json.url news_url(news, format: :json)
