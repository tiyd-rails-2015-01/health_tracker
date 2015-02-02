json.array!(@foods) do |food|
  json.extract! food, :id, :eaten_on, :description, :calories
  json.url food_url(food, format: :json)
end
