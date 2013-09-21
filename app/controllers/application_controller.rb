class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def signed_in
  	redirect_to root_path unless current_contributor
  end

	def current_contributor
		@current_contributor ||= Contributor.find(session[:contributor_id]) if session[:contributor_id]
	end

	helper_method :current_contributor
end
