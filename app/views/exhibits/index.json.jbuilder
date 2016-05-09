json.array!(@exhibits) do |exhibit|
  json.extract! exhibit, :id, :title, :author, :date_of_origin, :place_of_origin, :description
  json.url exhibit_url(exhibit, format: :json)
end
