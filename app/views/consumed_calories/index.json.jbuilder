json.array!(@consumed_calories) do |consumed_calory|
  json.extract! consumed_calory, :id, :calorie_amount, :meal_type, :consumed_on
  json.url consumed_calory_url(consumed_calory, format: :json)
end
