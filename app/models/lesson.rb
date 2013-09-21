class Lesson < ActiveRecord::Base
	attr_accessible :curriculum_id, :instruction, :name

	LessonPlan = Lesson.order(&:created_at).collect(&:id)

	belongs_to :curriculum
	has_many :exercises

	def number
		curriculum.lessons.index(self) + 1
	end

	def next_lesson
		if completed_all_lessons?
			nil
		else
			LessonPlan[number]
		end
	end

	def completed_all_lessons?
		number == LessonPlan.length
	end
end
