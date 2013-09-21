class AddAttemptedToCurrentLevel < ActiveRecord::Migration
  def change
    add_column :current_levels, :attempted, :boolean, default: false
  end
end
