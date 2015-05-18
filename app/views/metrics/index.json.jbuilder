json.array!(@metrics) do |metric|
  json.extract! metric, :id, :title, :quota
  json.url metric_url(metric, format: :json)
end
