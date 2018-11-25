class RemoveProfileFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :profile_id
  end
end
