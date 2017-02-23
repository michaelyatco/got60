class GamesController < ApplicationController
  
  def index
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    game = Game.new(
      competitor_id: params[:competitor_id], 
      challenger_id: params[:challenger_id], 
      game_id: params[:game_id], 
      wager_id: params[:wager_id], 
      round_id: params[:round_id])
    if game.save 
      redirect_to "/trivia"
    else 
      render "new.html.erb"
    end
  end

end
