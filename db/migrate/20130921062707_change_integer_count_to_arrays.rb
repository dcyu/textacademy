class ChangeIntegerCountToArrays < ActiveRecord::Migration
  def up
  	remove_column :current_levels, :correct_exercises
  	remove_column :current_levels, :incorrect_exercises
  	add_column :current_levels, :correct_exercises, :text, default: "--- []\n"
  	add_column :current_levels, :incorrect_exercises, :text, default: "--- []\n"
  end

  def down
  	remove_column :current_levels, :correct_exercises
  	remove_column :current_levels, :incorrect_exercises
  	add_column :current_levels, :correct_exercises, :integer
  	add_column :current_levels, :incorrect_exercises, :integer
  end
end
