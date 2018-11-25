class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :rut
      t.string :email
      t.string :patient_name

      t.timestamps
    end
  end
end
