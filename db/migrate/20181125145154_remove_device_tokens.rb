class RemoveDeviceTokens < ActiveRecord::Migration[5.2]
  def change
    drop_table :device_tokens
  end
end
