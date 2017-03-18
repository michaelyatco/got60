class Api::V1::GamesController < ApplicationController
  def update
    @game = Game.find_by(id: params[:id])
    @game.update(competitor_score: params[:competitor_score], challenger_score: params[:challenger_score])
    render "show.json.jbuilder"
  end
end