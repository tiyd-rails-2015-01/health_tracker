json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :performed_on, :exercise_type, :exercise_duration, :calorie_burn
  json.url exercise_url(exercise, format: :json)
end
