json.array!(@steps) do |step|
  json.extract! step, :id, :step_amount, :step_on
  json.url step_url(step, format: :json)
end
