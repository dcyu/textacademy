class Exercise < ActiveRecord::Base

	def number
   lessons.exercises.index(self) + 1
	end

	def correct?(answer)
	   answer.text == answer
	end
end
