ActiveAdmin.register Post do
permit_params :post_type_id, :profile_id, :title, :content

end
