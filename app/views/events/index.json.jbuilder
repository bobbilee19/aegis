json.array!(@events) do |event|
  json.extract! event, :id, :sponsor_id, :user_id, :contact_at, :channel, :description
  json.url event_url(event, format: :json)
end
