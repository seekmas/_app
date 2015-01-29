json.array!(@vips) do |vip|
  json.extract! vip, :id, :user_id, :expired_at, :description
  json.url vip_url(vip, format: :json)
end
