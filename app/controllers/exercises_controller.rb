class ExercisesController < ApplicationController
	before_filter :signed_in

	def new
		@exercise = Exercise.new(contributor_id: current_contributor.id, lesson_id: params[:lesson_id])
		@question = Question.new(exercise_id: @exercise.id)
		@answer = Answer.new(exercise_id: @exercise.id)
	end

	def create
		@exercise = Exercise.new(params[:exercise])
		@exercise.save
		redirect_to @exercise.lesson
	end


end