json.extract! notification, :id, :title, :content, :post_id, :comment_id, :emergency_id, :created_at, :updated_at
json.url notification_url(notification, format: :json)
