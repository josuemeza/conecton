class CreateProductRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :product_requests do |t|
      t.references :profile, foreign_key: true
      t.references :product, foreign_key: true
      t.boolean :pending, default: true

      t.timestamps
    end
  end
end
