class Exercise < ActiveRecord::Base
	attr_accessible :lesson_id,
									:contributor_id,
									:approved,
									:question_attributes,
									:answer_attributes

	belongs_to :lesson
	belongs_to :contributor
	has_one :question
	has_one :answer
	accepts_nested_attributes_for :question
	accepts_nested_attributes_for :answer

	def correct?(answer)
		self.answer.text == answer
	end
end
