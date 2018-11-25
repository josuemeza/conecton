class CreateProfileExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_exercises do |t|
      t.references :profile, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
