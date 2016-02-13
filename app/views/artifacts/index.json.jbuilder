json.array!(@artifacts) do |artifact|
  json.extract! artifact, :id, :name, :file_type, :corpus, :catalog_number
  json.url artifact_url(artifact, format: :json)
end
