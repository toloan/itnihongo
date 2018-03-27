json.extract! image_conmment, :id, :user_id, :image_id, :comment, :created_at, :updated_at
json.url image_conmment_url(image_conmment, format: :json)
