json.array!(@locations) do |location|
  json.extract! location, :id, :name, :telephone
  json.url location_url(location, format: :json)
end
