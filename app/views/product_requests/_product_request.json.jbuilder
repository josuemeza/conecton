json.extract! product_request, :id, :profile_id, :product_id, :pending, :created_at, :updated_at
json.url product_request_url(product_request, format: :json)
