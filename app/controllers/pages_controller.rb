class PagesController < ApplicationController

  def index
    if current_competitor
      gon.latitude = current_competitor.sessions.last.latitude
      gon.longitude = current_competitor.sessions.last.longitude
    end
    render "index.html.erb"
  end
  
end
