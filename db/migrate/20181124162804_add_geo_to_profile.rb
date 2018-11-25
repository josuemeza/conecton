class AddGeoToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :latitude, :string
    add_column :profiles, :longitude, :string
  end
end
