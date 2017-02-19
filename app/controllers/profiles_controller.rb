class ProfilesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @profiles = Profile.all
    render "index.html.erb" 
  end

  def new
    # if current_user.profile.any?
    @profile = Profile.new
    render "new.html.erb"
    # else
    # redirect_to their profile page
    # end
  end

  def create
    @profile = Profile.new(gender: params[:gender], orientation: params[:orientation], bio: params[:bio], preferred_opponent:params[:preferred_opponent], preferred_age_range: params[:preferred_age_range], distance_limits: params[:distance_limits], dafault_games: params[:default_games])

    if @profile.save
      @profile.images.create(url: params[:image])
      flash[:success] = "Profile has been created!"
      redirect_to "/profiles/#{@profile.id}"  
    else
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
      redirect_to "/products/#{@product.id}"
    else
      render "edit.html.erb"
    end
  end

  def destroy
    @profile = Profile.find_by(id: params[:id])
    @profile.destroy
    flash[:danger] = "Profile has been deleted!"
    redirect_to "/products"
  end

end
