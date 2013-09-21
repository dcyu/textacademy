class Exercise < ActiveRecord::Base
	attr_accessible :lesson_id, :contributor_id, :approved

	belongs_to :lesson
	belongs_to :contributor
	has_one :question
	has_one :answer

	def correct?(answer)
		self.answer.text == answer
	end
end
