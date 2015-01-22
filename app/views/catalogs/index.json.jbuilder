json.array!(@catalogs) do |catalog|
  json.extract! catalog, :id, :subject, :description, :enabled, :cover
  json.url catalog_url(catalog, format: :json)
end
