json.extract! news, :id, :header, :body, :link, :types, :created_at, :updated_at
json.url news_url(news, format: :json)
