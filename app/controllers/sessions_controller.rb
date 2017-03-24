class SessionsController < ApplicationController
  after_action :current_competitor, only: :create
  def new
    render "new.html.erb"
  end

  def create
    @competitor = Competitor.find_by(email: params[:email])
    if @competitor && @competitor.authenticate(params[:password])
      session[:competitor_id] = @competitor.id
      flash[:success] = "Successfully logged in!"
      Session.create(latitude: params[:latitude], longitude: params[:longitude], competitor_id: @competitor.id)
      if @competitor.profile
        redirect_to "/profiles/#{@competitor.profile.id}"
        
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
