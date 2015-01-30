json.array!(@exercises_performeds) do |exercises_performed|
  json.extract! exercises_performed, :id, :date, :exercise_name, :reps_performed, :distance, :calories_burned
  json.url exercises_performed_url(exercises_performed, format: :json)
end
