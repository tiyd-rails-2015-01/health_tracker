json.array!(@calories) do |calorie|
  json.extract! calorie, :id, :created_at, :calorie
  json.url calorie_url(calorie, format: :json)
end
