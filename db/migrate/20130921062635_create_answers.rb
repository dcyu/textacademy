class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :text
      t.integer :exercise_id

      t.timestamps
    end
  end
end
