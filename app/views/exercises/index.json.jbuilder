json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :exercise_type, :duration, :added_on
  json.url exercise_url(exercise, format: :json)
end
