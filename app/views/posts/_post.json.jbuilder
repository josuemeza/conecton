json.extract! post, :id, :content, :post_type_id, :created_at, :updated_at
json.profiles post.profile, :id, :name
json.url post_url(post, format: :json)
