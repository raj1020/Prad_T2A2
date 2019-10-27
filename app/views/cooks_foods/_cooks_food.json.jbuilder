json.extract! cooks_food, :id, :cook_id, :food_id, :price, :created_at, :updated_at
json.url cooks_food_url(cooks_food, format: :json)
