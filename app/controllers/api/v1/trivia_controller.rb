class Api::V1::TriviaController < ApplicationController
  def index
    # should have code here that picks trivia questions of a specific category
    # so for your app...
    # @questions = TriviaQuestion.where(category: "Harry Potter")
    # then more conditions like if you want to limit the questions or
    # @questions = @questions.shuffle
    # to put them in a random order
    @trivia = TriviaQuestion.all
    render "index.json.jbuilder"
  end
end