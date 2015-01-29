json.array!(@weights) do |weight|
  json.extract! weight, :id, :daily_weight, :recorded_on
  json.url weight_url(weight, format: :json)
end
