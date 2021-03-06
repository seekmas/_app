json.array!(@courses) do |course|
  json.extract! course, :id, :subject, :description, :cover, :reference, :trouble, :catalog_id
  json.url course_url(course, format: :json)
end
