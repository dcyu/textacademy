class AddColumnsToExercise < ActiveRecord::Migration
  def change
  	add_column :exercises, :contributor_id, :integer
  	add_column :exercises, :approved, :boolean, default: false
  end
end
