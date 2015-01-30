json.array!(@joules) do |joule|
  json.extract! joule, :id, :consumed_joules, :added_on
  json.url joule_url(joule, format: :json)
end
