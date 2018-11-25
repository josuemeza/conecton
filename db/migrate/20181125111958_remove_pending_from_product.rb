class RemovePendingFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :pending
  end
end
