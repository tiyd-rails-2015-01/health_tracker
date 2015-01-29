json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :exercise_amount, :exercise_type, :exercise_on, :calories_consumed
  json.url exercise_url(exercise, format: :json)
end
