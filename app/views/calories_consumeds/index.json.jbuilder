json.array!(@calories_consumeds) do |calories_consumed|
  json.extract! calories_consumed, :id, :date, :calories
  json.url calories_consumed_url(calories_consumed, format: :json)
end
