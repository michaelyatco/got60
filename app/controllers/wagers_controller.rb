class WagersController < ApplicationController
  def index
    render "index.html.erb"
  end

  def edit
    @wager = Wager.find_by(id: params[:id])
    @chatroom = Chatroom.find_by(game_id: @wager.game.id)
    render "edit.html.erb"
  end

  def update
    @wager = Wager.find_by(id: params[:id])
    @wager.update(bet: params[:bet])
    Message.create(competitor_id: current_competitor.id, chatroom_id: @wager.game.id, body: "The game has started! Go to <a href='localhost:3000/trivias/#{@wager.game.id}'>here</a>")
    redirect_to "/trivias/#{@wager.game.id}"
  end

  def show
    @wager = Wager.find_by(id: params[:id])
    @chatroom = Chatroom.find_by(game_id: @wager.game.id)
    @winner = Competitor.find_by(id: @wager.winner_id)
    @loser = Competitor.find_by(id: @wager.loser_id)
  end
end
