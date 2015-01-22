json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :subject, :description, :order_id, :course_id
  json.url chapter_url(chapter, format: :json)
end
