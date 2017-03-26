class FriendshipsController < ApplicationController
  def create
  @friendship = current_competitor.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to profile_path(current_competitor.id)
    else
      flash[:notice] = "Unable to add friend."
      redirect_to profile_path(current_competitor.id)
    end
  end

  def destroy
    @friendship = current_competitor.friendships.find_by(friend_id: params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to profile_path(current_competitor.id)
  end

end
