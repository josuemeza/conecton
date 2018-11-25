ActiveAdmin.register Notification do
permit_params :title, :content, :post_id, :comment_id, :emergency_id

end
