json.array!(@calorie_consumptions) do |calorie_consumption|
  json.extract! calorie_consumption, :id, :consumed_on, :food, :calorie_intake
  json.url calorie_consumption_url(calorie_consumption, format: :json)
end
