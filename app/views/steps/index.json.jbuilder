json.array!(@steps) do |step|
  json.extract! step, :id, :steps_taken, :walked_on
  json.url step_url(step, format: :json)
end
