class ContributorsController < ApplicationController
  def new
  	@contributor = Contributor.new
  end

  def create
  	@contributor = Contributor.new(params[:contributor])
	  if @contributor.save
      session[:contributor_id] = @contributor.id
	    redirect_to lessons_path
	  else
      redirect_to root_url
	  end
  end

  def exercises
    @exercises = Exercise.where(contributor_id: params[:id])
  end
end
