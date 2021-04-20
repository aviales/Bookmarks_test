json.extract! category, :id, :title, :is_public, :category_id, :created_at, :updated_at
json.url category_url(category, format: :json)
