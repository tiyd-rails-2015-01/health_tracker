json.array!(@weights) do |weight|
  json.extract! weight, :id, :created_at, :weight
  json.url weight_url(weight, format: :json)
end
