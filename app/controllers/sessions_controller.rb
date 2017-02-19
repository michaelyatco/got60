class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    competitor = competitor.find_by(email: params[:email])
    if competitor && competitor.authenticate(params[:password])
      session[:competitor_id] = competitor.id
      flash[:success] = 'Successfully logged in!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/login'
    end
  end

  def destroy
    session[:competitor_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end
end
