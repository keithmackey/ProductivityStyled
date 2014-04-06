json.array!(@douchebags) do |douchebag|
  json.extract! douchebag, :id, :name, :how_big
  json.url douchebag_url(douchebag, format: :json)
end
