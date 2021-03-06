json.array!(@hours) do |hour|
  json.extract! hour, :id, :date, :start, :finish, :description, :user_id
  json.url hour_url(hour, format: :json)
end
