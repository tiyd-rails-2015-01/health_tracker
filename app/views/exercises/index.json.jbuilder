json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :date, :type_of_exercise, :calories_burned
  json.url exercise_url(step, format: :json)
end
