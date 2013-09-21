class LessonsController < ApplicationController
	before_filter :signed_in

	def index
		@lessons = Lesson.all
	end

	def show
		@lesson = Lesson.find(params[:id])
	end
end