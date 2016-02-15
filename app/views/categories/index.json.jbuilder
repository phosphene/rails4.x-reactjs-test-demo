json.array!(@categories) do |category|
  json.extract! category, :id, :name, :parent_id, :lft, :rgt
  json.url category_url(category, format: :json)
end
