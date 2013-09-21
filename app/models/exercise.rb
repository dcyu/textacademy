class Exercise < ActiveRecord::Base
	attr_accessible :lesson_id

	belongs_to :lesson
	has_one :question
	has_one :answer

	def correct?(answer)
		self.answer.text == answer
	end
end
