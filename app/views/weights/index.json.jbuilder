json.array!(@weights) do |weight|
  json.extract! weight, :id, :logged_on, :weight
  json.url weight_url(weight, format: :json)
end
