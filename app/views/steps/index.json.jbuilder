json.array!(@steps) do |step|
  json.extract! step, :id, :timePerformed, :steps
  json.url step_url(step, format: :json)
end
