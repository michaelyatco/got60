class Api::V1::SessionsController < ApplicationController
  def index
    @sessions = Session.all
    render "index.json.jbuilder"
  end
end