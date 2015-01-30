json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :logged_on, :exercise_performed, :time_in_minutes
  json.url exercise_url(exercise, format: :json)
end
