class User < ActiveRecord::Base
  attr_accessible :phone_number
  has_one :current_level

  def self.sign_up(phone_number)
  	user = User.create(phone_number: phone_number)
		current = CurrentLevel.create(lesson_id: Lesson.first.id, user_id: user.id, correct_exercises: [], incorrect_exercises: [])
		message = "Welcome to TextAcademy.\n"
		message += "Lesson ##{current.lesson.number}\n"
		message += "#{current.lesson.instruction}\n"
		message += "Text BEGIN to start the level"
  end
end
