class WagersController < ApplicationController
  def index
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @wager = Wager.create(bet: params[:bet])
  end

  def show
    @wager = Wager.find_by(id: params[:id])
  end
end
