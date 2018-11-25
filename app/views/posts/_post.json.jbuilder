json.extract! post, :id, :content, :asset_url, :created_at, :updated_at
json.profiles post.profile, :id, :name
json.type post.post_type, :id, :name
json.url post_url(post, format: :json)
