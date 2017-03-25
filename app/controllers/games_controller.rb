class GamesController < ApplicationController
  
  def index
    render "index.html.erb"
  end

  def new
    @id = params[:game_id]
    render "new.html.erb"
  end

  def create
    game = Game.new(
      competitor_id: current_competitor.id, 
      challenger_id: params[:challenger_id], 
      game_id: params[:game_id], 
      round_id: 1)
    if game.save 
      @chatroom = Chatroom.create(game_id: game.id)
      @wager = Wager.create
      game.update(wager_id: @wager.id)
      redirect_to "/wagers/#{@wager.id}/edit"
    else 
      render "new.html.erb"
    end
  end

  def show
    @game = Game.find_by(id: params[:id])
  end

end
