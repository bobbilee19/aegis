json.array!(@contacts) do |contact|
  json.extract! contact, :id, :sponsor_id, :role, :name, :email, :phone_number
  json.url contact_url(contact, format: :json)
end
