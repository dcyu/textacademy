class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :curriculum_id
      t.text :instruction

      t.timestamps
    end
  end
end
