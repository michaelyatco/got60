class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_competitor
    @current_competitor ||= Competitor.find_by(id: session[:competitor_id]) if session[:competitor_id]
  end
  helper_method :current_competitor

  def authenticate_competitor!
    redirect_to '/login' unless current_competitor
  end

  # def authenticate_admin!
  #   redirect_to '/login' unless current_competitor && current_competitor.admin?
  # end


end
