ActiveAdmin.register Post do
permit_params :post_type_id, :asset_url, :profile_id, :title, :content

end
