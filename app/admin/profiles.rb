ActiveAdmin.register Profile do
permit_params :name, :address, :phone, :email, :rut, :patient_name, :city, :region, :latitude, :longitude, :user_id

end
