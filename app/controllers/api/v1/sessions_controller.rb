class Api::V1::SessionsController < ApplicationController
  after_action :current_competitor, only: :create
  def index
    @sessions = Session.all
    render "index.json.jbuilder"
  end

  def create
    @competitor = Competitor.find_by(email: params[:email])
    if @competitor && @competitor.authenticate(params[:password])
      session[:competitor_id] = @competitor.id
      flash[:success] = "Successfully logged in!"
      Session.create(latitude: params[:latitude], longitude: params[:longitude], competitor_id: @competitor.id)
      if @competitor.profile
        render json: { id: @competitor.id }
      else
        render json: { id: "new" }
      end
    else
      render json: { error: "something exploded" }
    end
  end
end