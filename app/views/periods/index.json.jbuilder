json.array!(@periods) do |period|
  json.extract! period, :id, :subject, :content, :cover, :reference, :quiz, :chapter_id
  json.url period_url(period, format: :json)
end
