class SessionsController < ApplicationController
  def new
    render "new.html.erb"
  end

  def create
    competitor = Competitor.find_by(email: params[:email])
    if competitor && competitor.authenticate(params[:password])
      session[:competitor_id] = competitor.id
      params[:latitude]
      params[:longitude]
      flash[:success] = "Successfully logged in!"
      if competitor.profile
        redirect_to "/profiles/#{competitor.profile.id}"
      else
        redirect_to "/profiles/new"
      end
    else
      flash[:warning] = "Invalid email or password!"
      redirect_to "/login"
    end
  end

  def destroy
    session[:competitor_id] = nil
    flash[:success] = "Successfully logged out!"
    redirect_to "/login"
  end
end
