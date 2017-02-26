class CompetitorsController < ApplicationController
  
  def index
    render "index.html.erb"
  end

  def new
    @competition = Competitor.new
    render "new.html.erb"
  end

  def create
    competitor = Competitor.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if competitor.save
      session[:competitor_id] = competitor.id
      flash[:success] = "Successfully created account!"
      redirect_to "/profiles/new"
    else
      flash[:warning] = "Invalid email or password!"
      redirect_to "/signup"
    end
  end

  def destroy
    competitor = Competitor.find_by(id: params[:id])
    @competitor.destroy
    flash[:danger] = "Competitor has been deleted!"
    redirect_to "/signup"
  end
end
