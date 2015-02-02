json.array!(@calories) do |calorie|
  json.extract! calorie, :id, :date, :meal, :calories_consumed
  json.url calorie_url(calorie, format: :json)
end
