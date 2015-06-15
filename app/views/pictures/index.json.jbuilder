json.array!(@pictures) do |picture|
  json.extract! picture, :id, :menu_id, :filename
  json.url picture_url(picture, format: :json)
end
