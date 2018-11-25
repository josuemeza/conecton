class AddAssetUrlToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :asset_url, :string
  end
end
