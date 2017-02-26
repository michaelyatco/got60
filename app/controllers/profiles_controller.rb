class ProfilesController < ApplicationController
  # before_action :authenticate_admin!, except: [:index, :show]

  # def index
  #   @profiles = Profile.all
  #   render "index.html.erb" 
  # end

  def new
    if !current_competitor.profile
      @profile = Profile.new
      @competitor = current_competitor
      render "new.html.erb"
    else
    # redirect_to their profile page
    # end
    end
  end

  def create
    @profile = Profile.new(gender: params[:gender], orientation: params[:orientation], bio: params[:bio], preferred_opponent:params[:preferred_opponent], preferred_age_range: params[:preferred_age_range], distance_limits: params[:distance_limits], default_games: params[:default_games], birthdate: params[:birthdate], competitor: current_competitor)

    if @profile.save
      @profile.images.create(url: params[:image])
      flash[:success] = "Profile has been created!"
      redirect_to "/profiles/#{@profile.id}"  
    else
      @competitor = current_competitor
      render "new.html.erb"
    end

  end

  def show
    @profile = Profile.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @profile = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @profile = Profile.find_by(id: params[:id])
    @profile.assign_attributes(gender: params[:gender], orientation: params[:orientation], bio: params[:bio], preferred_opponent: params[:preferred_opponent], preferred_age_range: params[:preferred_age_range], distance_limits: params[:distance_limits], dafault_games: params[:default_games])

    if @profile.save
      @profile.images.create(url: params[:images])
      flash[:success] = "Profile has been updated!"
      redirect_to "/profiles/#{@profile.id}"
    else
      render "edit.html.erb"
    end
  end

  def destroy
    @profile = Profile.find_by(id: params[:id])
    @profile.destroy
    flash[:danger] = "Profile has been deleted!"
    redirect_to "/profiles"
  end

end
