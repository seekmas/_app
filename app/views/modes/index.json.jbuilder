json.array!(@modes) do |mode|
  json.extract! mode, :id, :subject, :content
  json.url mode_url(mode, format: :json)
end
