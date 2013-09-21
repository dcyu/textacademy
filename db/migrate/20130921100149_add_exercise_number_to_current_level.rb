class AddExerciseNumberToCurrentLevel < ActiveRecord::Migration
  def change
    add_column :current_levels, :exercise_number, :integer, default: 1
  end
end
