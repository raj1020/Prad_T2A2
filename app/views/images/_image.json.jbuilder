json.extract! image, :id, :imageable_id, :imageable_type, :short_description, :created_at, :updated_at
json.url image_url(image, format: :json)
