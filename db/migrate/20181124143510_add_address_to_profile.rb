class AddAddressToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :city, :string
    add_column :profiles, :region, :string
  end
end
