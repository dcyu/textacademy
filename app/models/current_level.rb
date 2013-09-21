class CurrentLevel < ActiveRecord::Base
  attr_accessible :correct_exercises, :exercise_id, :incorrect_exercises, :lesson_id, :user_id

  serialize :correct_exercises
  serialize :incorrect_exercises

  belongs_to :user

  def lesson
  	Lesson.find(lesson_id)
  end

  def exercise
  	Exercise.find(exercise_id)
  end


end
