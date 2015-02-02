json.array!(@steps) do |step|
  json.extract! step, :id, :logged_on, :steps_taken
  json.url step_url(step, format: :json)
end
