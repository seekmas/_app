json.array!(@newsfeeds) do |newsfeed|
  json.extract! newsfeed, :id, :subject, :content, :enabled, :order_id
  json.url newsfeed_url(newsfeed, format: :json)
end
