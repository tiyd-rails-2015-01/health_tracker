json.array!(@steps) do |step|
  json.extract! step, :id, :date, :steps_taken
  json.url step_url(step, format: :json)
end
