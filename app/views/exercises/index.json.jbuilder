json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :timePerformed, :description, :calories
  json.url exercise_url(exercise, format: :json)
end
