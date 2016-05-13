json.array!(@tasks) do |user|
  json.extract! sponsor_id, user_id, :id, :description, :remind_at
  json.url user_url(user, format: :json)
end
