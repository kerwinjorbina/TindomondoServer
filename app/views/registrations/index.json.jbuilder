json.array!(@registrations) do |registration|
  json.extract! registration, :id, :event_id, :user_id
  json.url registration_url(registration, format: :json)
end
