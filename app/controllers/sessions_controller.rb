class SessionsController < ApplicationController

  def new
	end

	def create
	  contributor = Contributor.authenticate(params[:username], params[:password])
	  if contributor
	    session[:contributor_id] = contributor.id
	    redirect_to lessons_path, :notice => "Logged in!"
	  else
	    flash.now.alert = "Invalid email or password"
	    render "new"
	  end
	end

	def destroy
	  session[:contributor_id] = nil
	  redirect_to root_url, :notice => "Logged out!"
	end
end
