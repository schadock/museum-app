json.array!(@exhibits) do |exhibit|
  json.extract! exhibit, :id, :title, :author, :date_of_origin, , :description, :extra
  json.url exhibit_url(exhibit, format: :json)
end
