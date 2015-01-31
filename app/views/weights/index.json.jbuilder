json.array!(@weights) do |weight|
  json.extract! weight, :id, :weighed_on, :weights
  json.url weight_url(weight, format: :json)
end
