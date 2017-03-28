class Api::V1::GamesController < ApplicationController
  def update
    @game = Game.find_by(id: params[:id])
    @wager = @game.wager
    if @game.competitor_score
      @game.update(challenger_score: params[:competitorScore])
      if @game.challenger_score > @game.competitor_score
        @wager.update(winner_id: @game.challenger_id, loser_id: @game.competitor_id)
      else
        @wager.update(loser_id: @game.challenger_id, winner_id: @game.competitor_id)
      end
      @chatroom = Chatroom.find_by(game_id: @game.id)
      ActionCable.server.broadcast "message_channel", {
        chatroom_id: @chatroom.id,
        complete: true
      }
    else
      @game.update(competitor_score: params[:competitorScore])
    end
    render "show.json.jbuilder"
  end
end