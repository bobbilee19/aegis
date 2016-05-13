json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :name, :industry, :category, :website, :location
  json.url sponsor_url(sponsor, format: :json)
end
