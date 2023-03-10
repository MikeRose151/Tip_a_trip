class FavouritesController < ApplicationController

  def create
    @favourite = Favourite.new
    @favourite.user_id = current_user.id
    @activity = Activity.find(params[:activity_id])
    @favourite.activity_id = @activity.id
    @itinerary = Itinerary.find(params[:itinerary_id])
    if @favourite.save
      redirect_to itinerary_activities_path
    else
      render itinerary_activities_path
    end
  end
end
