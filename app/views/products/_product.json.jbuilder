json.extract! product, :id, :name, :description, :price, :created_at, :updated_at
json.photo product.photo.url
json.url product_url(product, format: :json)
