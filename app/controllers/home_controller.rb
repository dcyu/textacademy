class HomeController < ApplicationController

  def index
    @current_contributor ||= Contributor.find(session[:contributor_id]) if session[:contributor_id]
  end

end
