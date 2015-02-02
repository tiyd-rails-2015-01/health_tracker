json.array!(@weights) do |weight|
  json.extract! weight, :id, :weight_amount, :weight_on
  json.url weight_url(weight, format: :json)
end
