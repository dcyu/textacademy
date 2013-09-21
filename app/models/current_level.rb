class CurrentLevel < ActiveRecord::Base
  attr_accessible :correct_exercises,
                  :exercise_id,
                  :incorrect_exercises,
                  :lesson_id,
                  :user_id,
                  :exercise_number,
                  :attempted

  serialize :correct_exercises
  serialize :incorrect_exercises

  belongs_to :user

  def lesson
  	Lesson.find(lesson_id)
  end

  def exercise
  	Exercise.find(exercise_id)
  end

  def question
    exercise.question
  end

  def answer
    exercise.answer
  end

  def completed?
    correct_exercises.length == ENV['PASSING_LIMIT'].to_i
  end

  def progress
    correct_exercises.length
  end

  def exercises
    (correct_exercises + incorrect_exercises).flatten.uniq
  end

  def start_exercise
    if exercise_id
      return "You have already begun this lesson"
    end
    new_exercise_id = (Exercise.pluck(:id) - exercises).sample
    update_attributes(exercise_id: new_exercise_id, exercise_number: exercise_number)
    reload
    message = "Lesson ##{lesson.number}\nExercise ##{exercise_number}\nProgress #{progress}/#{ENV['PASSING_LIMIT']}\n"
    message += "Question: #{question.text}\n"
  end

  def skip_exercise
    if !attempted
      message = "Sorry, you cannot skip this exercise. Please submit an answer"
      return message
    else
      new_exercise_id = find_new_exercise
      update_attributes(exercise_id: new_exercise_id, exercise_number: exercise_number + 1, attempted: false)
      reload
      message = "Lesson ##{lesson.number}\nExercise ##{exercise_number}\nProgress #{progress}/#{ENV['PASSING_LIMIT']}\n"
      message += "Question: #{question.text}\n"
    end
  end

  def find_new_exercise
    remaining_exercises = Exercise.pluck(:id) - exercises
    if remaining_exercises.empty?
      logger.debug "No more exercises\nRecycling"
      new_exercise_id = (incorrect_exercises - [exercise.id]).pop
    else
      new_exercise_id = (Exercise.pluck(:id) - exercises).sample
    end
    new_exercise_id
  end

  def next_exercise
    new_exercise_id = find_new_exercise
    update_attributes(exercise_id: new_exercise_id, exercise_number: exercise_number + 1, attempted: false)
    reload
    message = "Correct!\n"
    message += "Lesson ##{lesson.number}\nExercise ##{exercise_number}\nProgress #{progress}/#{ENV['PASSING_LIMIT']}\n"
    message += "Question: #{question.text}\n"
  end

  def complete_level
    message = "Congratulations! You have completed a level\n"
    lesson_id = lesson.next_lesson
    if lesson_id.nil?
      message += "Congratulations! You have completed the program!"
    else
      update_attributes(lesson_id: lesson_id, attempted: false)
      message += "Lesson ##{lesson.number}\n"
      message += "#{lesson.instruction}\n"
      message += "Text NEXT to move to a new level"
    end
  end

  def mark_incorrect
    self.attempted = true
    self.incorrect_exercises << exercise.id if !incorrect_exercises.include?(exercise.id)
    self.save
    message = "Sorry, that was incorrect. Try again or type SKIP for a new question"
  end

  def save_progress
    correct_exercises << exercise.id
    save
  end

  def represent_question
    if exercise.present?
      message = "Lesson ##{lesson.number}\nExercise ##{exercise_number}\nProgress #{progress}/#{ENV['PASSING_LIMIT']}\n"
      message += "Question: #{question.text}\n"
    else
      message = "Please text BEGIN to start the lesson"
    end
  end
end
