class ImagesController < ApplicationController
  def new
    @profile = Profile.find_by(id: params[:profile_id])
    render "new.html.erb"
  end

  def create
    image = Image.new(url: params[:url], product_id: params[:product_id])
    image.save
    redirect_to "/profiles/#{params[:product_id]}"
  end
end
