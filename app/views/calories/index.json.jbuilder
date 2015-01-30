json.array!(@calories) do |calory|
  json.extract! calory, :id, :timePerformed, :calories
  json.url calory_url(calory, format: :json)
end
