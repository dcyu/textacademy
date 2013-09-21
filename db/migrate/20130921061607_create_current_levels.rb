class CreateCurrentLevels < ActiveRecord::Migration
  def change
    create_table :current_levels do |t|
      t.integer :exercise_id
      t.integer :lesson_id
      t.integer :correct_exercises
      t.integer :incorrect_exercises
      t.integer :user_id

      t.timestamps
    end
  end
end
