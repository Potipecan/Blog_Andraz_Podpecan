json.extract! news, :id, :title, :caption, :body, :created_at, :updated_at
json.url news_url(news, format: :json)
