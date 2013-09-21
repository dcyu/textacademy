class CurrentLevel < ActiveRecord::Base
  attr_accessible :correct_exercises, :exercise_id, :incorrect_exercises, :lesson_id, :user_id

  serialize :correct_exercises
  serialize :incorrect_exercises

  belongs_to :user_id
  has_one :exercise
  has_one :lesson

end
