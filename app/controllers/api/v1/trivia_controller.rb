class Api::V1::TriviaController < ApplicationController
  def index
    # should have code here that picks trivia questions of a specific category
    # so for your app...
    # @questions = TriviaQuestion.where(category: "Harry Potter")
    # then more conditions like if you want to limit the questions or
    # @questions = @questions.shuffle
    # to put them in a random order
    game = Game.find_by(id: params[:game_id])
    if game.game_id == 1
        @trivia = TriviaQuestion.where(category: "Harry Potter")
    elsif game.game_id == 2
        @trivia = TriviaQuestion.where(category: "History")
    else
        @trivia = TriviaQuestion.where(category: "Pop Culture")
    end
    render "index.json.jbuilder"
  end
end