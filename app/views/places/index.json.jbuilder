json.array!(@places) do |place|
  json.extract! place, :id, :name, :station, :school, :library, :city
  json.url place_url(place, format: :json)
end
