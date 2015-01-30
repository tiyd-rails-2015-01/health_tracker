json.array!(@steps_takens) do |steps_taken|
  json.extract! exercises_performed, :id, :date, :steps
  json.url exercises_performed_url(exercises_performed, format: :json)
end
