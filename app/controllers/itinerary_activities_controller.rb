class ItineraryActivitiesController < ApplicationController
  def create
    @itinerary = Itinerary.find(params[:itinerary_id])
    @activity = Activity.find(params[:activity_id])
    @itinerary_activity = ItineraryActivity.new

    @itinerary_activity.itinerary_id = @itinerary.id
    @itinerary_activity.activity_id = @activity.id
    if @itinerary_activity.save
      # @favourite = Favourite.find(params[:favourite_id])
      # @favourite.destroy
      redirect_to edit_itinerary_path(@itinerary)
    else
      render edit_itinerary_path(@itinerary)
    end
  end

  def destroy
    @itinerary_activity = ItineraryActivity.find(params[:id])
    @itinerary_activity.destroy
    redirect_to edit_itinerary_path(@itinerary_activity.itinerary), see_status: :other
  end
end
