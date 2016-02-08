json.array!(@events) do |event|
  json.extract! event, :id, :location, :start_time, :duration, :registration_min, :registration_limit, :description, :user_id, :sport_id
  json.url event_url(event, format: :json)
end
