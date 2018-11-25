class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :content
      t.references :post, foreign_key: true
      t.references :comment, foreign_key: true
      t.references :emergency, foreign_key: true

      t.timestamps
    end
  end
end
