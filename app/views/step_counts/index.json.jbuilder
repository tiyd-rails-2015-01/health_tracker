json.array!(@step_counts) do |step_count|
  json.extract! step_count, :id, :taken_on, :step_count
  json.url step_count_url(step_count, format: :json)
end
