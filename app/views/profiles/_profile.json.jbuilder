json.extract! profile, :id, :user, :name, :address, :longitude, :latitude, :phone, :rut, :email, :patient_name, :created_at, :updated_at
json.url profile_url(profile, format: :json)
