class ContributorsController < ApplicationController
  def new
  	@contributor = Contributor.new
  end

  def create
  	@contributor = Contributor.new(params[:contributor])
	  if @contributor.save
	    redirect_to root_url, :notice => "Signed up!"
	  else
	    render "new"
	  end
  end
end
