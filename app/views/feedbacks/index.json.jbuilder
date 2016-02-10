json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :date_time, :user_id, :feedback_description
  json.url feedback_url(feedback, format: :json)
end
