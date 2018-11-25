class CreateEmergencies < ActiveRecord::Migration[5.2]
  def change
    create_table :emergencies do |t|
      t.references :profile, foreign_key: true
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
