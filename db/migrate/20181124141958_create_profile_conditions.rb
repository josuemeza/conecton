class CreateProfileConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_conditions do |t|
      t.references :profile, foreign_key: true
      t.references :condition, foreign_key: true

      t.timestamps
    end
  end
end
