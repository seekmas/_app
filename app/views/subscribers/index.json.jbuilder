json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :id, :course_id, :user_id
  json.url subscriber_url(subscriber, format: :json)
end
