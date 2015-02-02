json.array!(@calories) do |calory|
  json.extract! calory, :id, :calories_consumed, :calories_on
  json.url calory_url(calory, format: :json)
end
