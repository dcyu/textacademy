class TwilioController < ApplicationController

	def process_sms
		phone_number = params[:From]
		if user = User.find_by_phone_number(phone_number)
			body = params[:Body].chomp
			current = user.current_level
			if body.downcase.chomp == "begin"
				@message = current.start_exercise
			elsif body.downcase.chomp == "skip"
				@message = current.skip_exercise
			elsif body.to_i.to_s == body
				if current.exercise.correct?(body)
					current.save_progress
					if current.completed?
						@message = current.complete_level
					else
						@message = current.next_exercise
					end
				else
					@message = current.mark_incorrect
				end
			else
				# unrecognized input
				@message = current.represent_question
			end
		elsif params[:Body].downcase.chomp == "start learning" # Sign up
			@message = User.sign_up(phone_number)
		end
		logger.debug "Message: #{@message}"
    render 'process_sms.xml.erb', :content_type => 'text/xml'
  end

end