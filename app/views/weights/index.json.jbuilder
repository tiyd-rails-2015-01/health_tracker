json.array!(@weights) do |weight|
  json.extract! weight, :id, :user_weight, :added_on
  json.url weight_url(weight, format: :json)
end
