class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.where(chatroom_id: params[:chatroom_id])
    render "index.json.jbuilder"
  end

  def create
    @message = Message.create(
      body: params[:body],
      competitor_id: params[:competitor_id],
      chatroom_id: params[:chatroom_id]
      )
    ActionCable.server.broadcast "activity_channel", {
      id: @message.id,
      name: @message.competitor.username,
      body: @message.body,
      chatroom_id: @message.chatroom_id,
      created_at: @message.created_at
    }
    render "show.json.jbuilder"
  end
end
