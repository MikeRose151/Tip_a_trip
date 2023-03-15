class FavouritesController < ApplicationController

  def create
    @favourites = Favourite.all
    @favourite = Favourite.new
    @favourite.user_id = current_user.id
    @activity = Activity.find(params[:activity_id])
    @favourite.activity_id = @activity.id
    @itinerary = Itinerary.find(params[:itinerary_id])
    @favourite.save
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @itinerary = Itinerary.find(params[:itinerary_id])
    @favourite.destroy
    redirect_to edit_itinerary_path(@itinerary), see_status: :other
  end
end
