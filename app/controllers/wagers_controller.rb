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
    @message = Message.create(competitor_id: current_competitor.id, chatroom_id: @wager.game.id, body: "The game has started!")
    ActionCable.server.broadcast "activity_channel", {
      id: @message.id,
      name: @message.competitor.username,
      body: @message.body,
      chatroom_id: @message.chatroom_id,
      created_at: @message.created_at
    }
    redirect_to "/trivias/#{@wager.game.id}"
  end

  def show
    @wager = Wager.find_by(id: params[:id])
    @chatroom = Chatroom.find_by(game_id: @wager.game.id)
    @winner = Competitor.find_by(id: @wager.winner_id)
    @loser = Competitor.find_by(id: @wager.loser_id)
  end

  def upvote
    @voter = Competitor.find_by(id: params[:voter_id])
    @loser = Competitor.find_by(id: params[:loser_id])
    @loser.profile.liked_by(@voter)
    redirect_to "/wagers/#{params[:id]}"
  end

  def downvote
    @voter = Competitor.find_by(id: params[:voter_id])
    @loser = Competitor.find_by(id: params[:loser_id])
    @loser.profile.downvote_from(@voter)
    redirect_to "/wagers/#{params[:id]}"
  end
end
